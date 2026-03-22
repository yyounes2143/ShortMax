package com.facebook.appevents.cloudbridge;

import com.ss.texturerender.TextureRenderKeys;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: AppEventsCAPIManager.kt */
@Metadata
/* loaded from: classes3.dex */
public enum SettingsAPIFields {
    URL("endpoint"),
    ENABLED("is_enabled"),
    DATASETID("dataset_id"),
    ACCESSKEY(TextureRenderKeys.KEY_IS_BMF_VQSCORE_ACCESS_KEY);
    
    @NotNull
    private final String rawValue;

    SettingsAPIFields(String str) {
        this.rawValue = str;
    }

    @NotNull
    public final String getRawValue() {
        return this.rawValue;
    }
}
