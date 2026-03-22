package com.inmobi.media;

import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.be  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2892be {

    /* renamed from: a  reason: collision with root package name */
    public final Sd f24524a;

    /* renamed from: b  reason: collision with root package name */
    public final Oc f24525b;

    /* renamed from: c  reason: collision with root package name */
    public final C2909ce f24526c;

    public C2892be(Sd telemetryConfigMetaData, List samplingEvents) {
        Intrinsics.checkNotNullParameter(telemetryConfigMetaData, "telemetryConfigMetaData");
        Intrinsics.checkNotNullParameter(samplingEvents, "samplingEvents");
        this.f24524a = telemetryConfigMetaData;
        double random = Math.random();
        this.f24525b = new Oc(telemetryConfigMetaData, random, samplingEvents);
        this.f24526c = new C2909ce(telemetryConfigMetaData, random);
    }

    public final int a(Td telemetryEventType, String eventType) {
        Intrinsics.checkNotNullParameter(telemetryEventType, "telemetryEventType");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        int ordinal = telemetryEventType.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                C2909ce c2909ce = this.f24526c;
                c2909ce.getClass();
                Intrinsics.checkNotNullParameter(eventType, "eventType");
                if (c2909ce.f24559b < c2909ce.f24558a.f24160g) {
                    Pd pd2 = Pd.f23988a;
                    return 2;
                }
                return 0;
            }
            throw new NoWhenBranchMatchedException();
        }
        Oc oc2 = this.f24525b;
        oc2.getClass();
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        if (!oc2.f23952c.contains(eventType)) {
            return 1;
        }
        if (oc2.f23951b < oc2.f23950a.f24160g) {
            Pd pd3 = Pd.f23988a;
            return 2;
        }
        return 0;
    }
}
