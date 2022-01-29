#!/bin/bash

nvm install lts
npm install
npm run format
npm run fc
echo "Ready! ✨"
npm run start