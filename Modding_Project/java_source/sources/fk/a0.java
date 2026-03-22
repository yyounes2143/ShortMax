package fk;

import com.adjust.sdk.Constants;
import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ROMUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a0 f51704a = new a0();

    private a0() {
    }

    public final boolean a() {
        return Intrinsics.areEqual(DeviceUtil.f48146a.w(), "huawei");
    }

    public final boolean b() {
        return Intrinsics.areEqual(DeviceUtil.f48146a.w(), Constants.REFERRER_API_SAMSUNG);
    }

    public final boolean c() {
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        if (!Intrinsics.areEqual(deviceUtil.w(), Constants.REFERRER_API_VIVO) && !Intrinsics.areEqual(deviceUtil.w(), "iqoo")) {
            return false;
        }
        return true;
    }
}
