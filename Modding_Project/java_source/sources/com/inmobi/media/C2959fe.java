package com.inmobi.media;

import java.util.TimerTask;
/* renamed from: com.inmobi.media.fe  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2959fe extends TimerTask {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C2975ge f24749a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ byte f24750b;

    public C2959fe(C2975ge c2975ge, byte b10) {
        this.f24749a = c2975ge;
        this.f24750b = b10;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        this.f24749a.a(this.f24750b);
    }
}
