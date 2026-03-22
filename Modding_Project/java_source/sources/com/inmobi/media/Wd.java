package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Wd extends U1 {

    /* renamed from: e  reason: collision with root package name */
    public final String f24345e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Wd(String eventType, String str, String eventSource) {
        super(eventType, str);
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(eventSource, "eventSource");
        this.f24345e = eventSource;
    }

    public final String toString() {
        return this.f24238a + ' ';
    }
}
