package com.jiuzhou.cdn.model.request;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: CdnEventValue.kt */
@Metadata
/* loaded from: classes5.dex */
public final class CdnEventValue {
    @NotNull
    public static final CdnEventValue INSTANCE = new CdnEventValue();
    @NotNull
    public static final String VALUE_FIRST_FRAME = "FIRST_FRAME";
    @NotNull
    public static final String VALUE_PLAY = "PLAY";
    @NotNull
    public static final String VALUE_SEEK = "SEEK";
    @NotNull
    public static final String VALUE_SWITCH = "SWITCH";

    private CdnEventValue() {
    }
}
