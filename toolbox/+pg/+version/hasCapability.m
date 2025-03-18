function tf = hasCapability(capability)
    capabilities = "threshold_change_2.0.2";

    tf = any(capability == capabilities);
end