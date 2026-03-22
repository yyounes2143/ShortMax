package com.hades.aar.admanager.core;

import kotlin.Metadata;
@Metadata
/* loaded from: classes5.dex */
public enum AdPriority {
    PRIORITY_LOW(0),
    PRIORITY_MID(1),
    PRIORITY_HIGH(2);
    
    private final int value;

    AdPriority(int i10) {
        this.value = i10;
    }

    public final int getValue() {
        return this.value;
    }
}
