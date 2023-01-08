#!/usr/bin/env bash

# Copyright (c) 2018-2021, Texas Instruments
# All Rights Reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice, this
#   list of conditions and the following disclaimer.
#
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
#
# * Neither the name of the copyright holder nor the names of its
#   contributors may be used to endorse or promote products derived from
#   this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

echo "Downloading Base archive"
wget https://bop.felk.cvut.cz/media/data/bop_datasets/lmo_base.zip
unzip lmo_base.zip
cd lmo #All other files are extracted inside this

echo "Downloading LM models (5.4MB)"
wget https://bop.felk.cvut.cz/media/data/bop_datasets/lmo_models.zip
unzip lmo_models.zip

echo "Downloading train_pbr subset of training images (720.2MB):This may take some time"
wget https://bop.felk.cvut.cz/media/data/bop_datasets/lm_train_pbr.zip
unzip lm_train_pbr.zip

echo "Downloading all test images"
wget https://bop.felk.cvut.cz/media/data/bop_datasets/lmo_test_all.zip
unzip lmo_test_all.zip && mv test test_all  #rename test to test_all

echo "Downloading BOP subset of test images"
wget https://bop.felk.cvut.cz/media/data/bop_datasets/lmo_test_bop19.zip
unzip lmo_test_bop19.zip && mv test test_bop  #rename test to test_bop
