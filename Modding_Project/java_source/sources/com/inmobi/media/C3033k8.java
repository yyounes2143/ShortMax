package com.inmobi.media;

import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.k8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3033k8 extends M8 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3033k8(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, String borderStrokeStyle, String borderCornerStyle, String borderColor, String backgroundColor, int i18, String textColor, ArrayList textStyles, P8 nativeAnimationTimer) {
        super(i10, i11, i12, i13, i14, i15, i16, i17, borderStrokeStyle, borderCornerStyle, borderColor, backgroundColor, 12, (byte) 0, "#ff000000", CollectionsKt.t(DevicePublicKeyStringDef.NONE), nativeAnimationTimer);
        Intrinsics.checkNotNullParameter(borderStrokeStyle, "borderStrokeStyle");
        Intrinsics.checkNotNullParameter(borderCornerStyle, "borderCornerStyle");
        Intrinsics.checkNotNullParameter(borderColor, "borderColor");
        Intrinsics.checkNotNullParameter(backgroundColor, "backgroundColor");
        Intrinsics.checkNotNullParameter(textColor, "textColor");
        Intrinsics.checkNotNullParameter(textStyles, "textStyles");
        Intrinsics.checkNotNullParameter(nativeAnimationTimer, "nativeAnimationTimer");
        this.f23849l = i18;
        String str = textColor.length() == 0 ? "#ff000000" : textColor;
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f23851n = str;
        int min = Math.min(textStyles.size(), 1);
        ArrayList arrayList = new ArrayList();
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.f23852o = arrayList;
        if (min < 0) {
            return;
        }
        int i19 = 0;
        while (true) {
            this.f23852o.add(textStyles.get(i19));
            if (i19 == min) {
                return;
            }
            i19++;
        }
    }
}
