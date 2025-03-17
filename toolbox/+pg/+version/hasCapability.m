function tf = hasCapability(capability)
    capabilities = "live_editor_fix_2.0.2";

    tf = any(capability == capabilities);
end