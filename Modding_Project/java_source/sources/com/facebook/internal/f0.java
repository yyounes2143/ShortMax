package com.facebook.internal;

import kotlin.Metadata;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InternalSettings.kt */
@Metadata
/* loaded from: classes3.dex */
public final class f0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final f0 f16193a = new f0();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static volatile String f16194b;

    private f0() {
    }

    @Nullable
    public static final String a() {
        return f16194b;
    }

    public static final boolean b() {
        String str = f16194b;
        if (str == null || !StringsKt.V(str, "Unity.", false, 2, null)) {
            return false;
        }
        return true;
    }
}
