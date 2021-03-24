#!/usr/bin/env node
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
