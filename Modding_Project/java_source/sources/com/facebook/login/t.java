package com.facebook.login;

import kotlin.Metadata;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NonceUtil.kt */
@Metadata
/* loaded from: classes3.dex */
public final class t {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final t f16616a = new t();

    private t() {
    }

    public static final boolean a(@Nullable String str) {
        boolean z10 = false;
        if (str == null || str.length() == 0) {
            return false;
        }
        if (StringsKt.p0(str, ' ', 0, false, 6, null) >= 0) {
            z10 = true;
        }
        return !z10;
    }
}
