package com.inmobi.media;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Oc {

    /* renamed from: a  reason: collision with root package name */
    public final Sd f23950a;

    /* renamed from: b  reason: collision with root package name */
    public final double f23951b;

    /* renamed from: c  reason: collision with root package name */
    public final List f23952c;

    public Oc(Sd telemetryConfigMetaData, double d10, List samplingEvents) {
        Intrinsics.checkNotNullParameter(telemetryConfigMetaData, "telemetryConfigMetaData");
        Intrinsics.checkNotNullParameter(samplingEvents, "samplingEvents");
        this.f23950a = telemetryConfigMetaData;
        this.f23951b = d10;
        this.f23952c = samplingEvents;
        Intrinsics.checkNotNullExpressionValue(Oc.class.getSimpleName(), "getSimpleName(...)");
    }
}
