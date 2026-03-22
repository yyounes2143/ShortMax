package io.bidmachine.media3.common;

import android.os.Bundle;
import androidx.annotation.Nullable;
import cn.m0;
/* loaded from: classes8.dex */
public class PlaybackException extends Exception {

    /* renamed from: d  reason: collision with root package name */
    private static final String f55116d = m0.C0(0);

    /* renamed from: e  reason: collision with root package name */
    private static final String f55117e = m0.C0(1);

    /* renamed from: f  reason: collision with root package name */
    private static final String f55118f = m0.C0(2);

    /* renamed from: g  reason: collision with root package name */
    private static final String f55119g = m0.C0(3);

    /* renamed from: h  reason: collision with root package name */
    private static final String f55120h = m0.C0(4);

    /* renamed from: i  reason: collision with root package name */
    private static final String f55121i = m0.C0(5);

    /* renamed from: a  reason: collision with root package name */
    public final int f55122a;

    /* renamed from: b  reason: collision with root package name */
    public final long f55123b;

    /* renamed from: c  reason: collision with root package name */
    public final Bundle f55124c;

    /* JADX INFO: Access modifiers changed from: protected */
    public PlaybackException(@Nullable String str, @Nullable Throwable th2, int i10, Bundle bundle, long j10) {
        super(str, th2);
        this.f55122a = i10;
        this.f55124c = bundle;
        this.f55123b = j10;
    }
}
