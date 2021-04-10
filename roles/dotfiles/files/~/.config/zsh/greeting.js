#!/usr/bin/env node
// https://stackoverflow.com/questions/21716680/align-unicode-text-in-terminal-window-using-default-monospace-font
require('https')
  .get('https://apiv3.shanbay.com/weapps/dailyquote/quote/', (resp) => {
    let data = '';

    resp.on('data', (chunk) => {
      data += chunk;
    });

    resp.on('end', () => {
      let quote = JSON.parse(data);
      console.log(quote.content);
      console.log(quote.translation);
      console.log('  —— ' + quote.author);
    });
  })
  .on('error', (err) => {
    console.log('Error: ' + err.message);
  });
