// Copyright 2022 Cartesi Pte. Ltd.

// SPDX-License-Identifier: Apache-2.0
// Licensed under the Apache License, Version 2.0 (the "License"); you may not use
// this file except in compliance with the License. You may obtain a copy of the
// License at http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software distributed
// under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.

// @title History interface
pragma solidity ^0.8.13;

interface IHistory {
    // Events

    event NewClaim(address dapp, bytes claim);

    // Permissioned functions

    function submitClaim(address _dapp, bytes calldata _claim) external;

    function migrateToConsensus(address _consensus) external;

    // Permissionless functions

    function getEpochHash(address _dapp, bytes calldata _claimProof)
        external
        view
        returns (
            bytes32 epochHash_,
            uint256 inputIndex_,
            uint256 epochInputIndex_
        );
}
