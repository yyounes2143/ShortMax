package com.google.ads.mediation.inmobi;

import androidx.annotation.NonNull;
import java.util.HashMap;
/* loaded from: classes4.dex */
public final class InMobiExtras {
    private final String keywords;
    private final HashMap<String, String> parameterMap;

    public InMobiExtras(@NonNull HashMap<String, String> hashMap, @NonNull String str) {
        this.parameterMap = hashMap;
        this.keywords = str;
    }

    public String getKeywords() {
        return this.keywords;
    }

    public HashMap<String, String> getParameterMap() {
        return this.parameterMap;
    }
}
