package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import java.io.IOException;
/* loaded from: classes4.dex */
public class ParserException extends IOException {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f17184a;

    /* renamed from: b  reason: collision with root package name */
    public final int f17185b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ParserException(@Nullable String str, @Nullable Throwable th2, boolean z10, int i10) {
        super(str, th2);
        this.f17184a = z10;
        this.f17185b = i10;
    }

    public static ParserException b(@Nullable String str, @Nullable Throwable th2) {
        return new ParserException(str, th2, true, 1);
    }

    public static ParserException d(@Nullable String str, @Nullable Throwable th2) {
        return new ParserException(str, th2, true, 0);
    }

    public static ParserException e(@Nullable String str) {
        return new ParserException(str, null, false, 1);
    }
}
