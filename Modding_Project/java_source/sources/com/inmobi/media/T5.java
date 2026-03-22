package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public class T5 extends U1 {

    /* renamed from: e  reason: collision with root package name */
    public final String f24174e;

    /* renamed from: f  reason: collision with root package name */
    public final String f24175f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public T5(String eventId, String componentType, String eventType, String str) {
        super(eventType, str);
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        Intrinsics.checkNotNullParameter(componentType, "componentType");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        this.f24174e = eventId;
        this.f24175f = componentType;
    }

    public final String toString() {
        return this.f24238a + '@' + this.f24175f + ' ';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public T5(java.lang.String r3, java.lang.String r4, java.lang.String r5) {
        /*
            r2 = this;
            java.util.UUID r0 = java.util.UUID.randomUUID()
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "toString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r2.<init>(r0, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.T5.<init>(java.lang.String, java.lang.String, java.lang.String):void");
    }
}
