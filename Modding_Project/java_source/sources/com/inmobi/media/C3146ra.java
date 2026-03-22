package com.inmobi.media;

import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
/* renamed from: com.inmobi.media.ra  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3146ra {

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ int f25241e = 0;

    /* renamed from: a  reason: collision with root package name */
    public boolean f25242a = true;

    /* renamed from: b  reason: collision with root package name */
    public String f25243b = DevicePublicKeyStringDef.NONE;

    /* renamed from: c  reason: collision with root package name */
    public String f25244c = TtmlNode.RIGHT;

    /* renamed from: d  reason: collision with root package name */
    public String f25245d;

    public final String toString() {
        return "OrientationProperties(allowOrientationChange=" + this.f25242a + ", forceOrientation='" + this.f25243b + "', direction='" + this.f25244c + "', creativeSuppliedProperties=" + this.f25245d + ')';
    }
}
