package com.appsflyer.internal;

import android.media.AudioTrack;
import android.telephony.cdma.CdmaCellLocation;
import android.text.AndroidCharacter;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes2.dex */
public final class AFb1sSDK {
    @NotNull
    private final AFh1mSDK AFAdRevenueData;
    @Nullable
    private final byte[] getRevenue;

    public AFb1sSDK(@NotNull AFh1mSDK aFh1mSDK, @Nullable byte[] bArr) {
        Intrinsics.checkNotNullParameter(aFh1mSDK, "");
        this.AFAdRevenueData = aFh1mSDK;
        this.getRevenue = bArr;
    }

    public final void afInfoLog() {
        try {
            Map map = AFa1hSDK.f10916d;
            Object obj = map.get(-1994295490);
            if (obj == null) {
                obj = ((Class) AFa1hSDK.getRevenue((CdmaCellLocation.convertQuartSecToDecDegrees(0) > 0.0d ? 1 : (CdmaCellLocation.convertQuartSecToDecDegrees(0) == 0.0d ? 0 : -1)) + 88, (char) (58271 - (ViewConfiguration.getScrollBarFadeDuration() >> 16)), 37 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)))).getDeclaredConstructor(null);
                map.put(-1994295490, obj);
            }
            Object newInstance = ((Constructor) obj).newInstance(null);
            Object[] objArr = {this.AFAdRevenueData, this.getRevenue};
            Object obj2 = map.get(2113693083);
            if (obj2 == null) {
                obj2 = ((Class) AFa1hSDK.getRevenue(136 - AndroidCharacter.getMirror('0'), (char) (58271 - (ViewConfiguration.getPressedStateDuration() >> 16)), 37 - (KeyEvent.getMaxKeyCode() >> 16))).getMethod("getMonetizationNetwork", AFh1mSDK.class, byte[].class);
                map.put(2113693083, obj2);
            }
            ((Method) obj2).invoke(newInstance, objArr);
        } catch (Throwable th2) {
            Throwable cause = th2.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th2;
        }
    }
}
