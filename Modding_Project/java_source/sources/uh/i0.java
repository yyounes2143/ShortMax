package uh;

import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: DownloadSwitch.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDownloadSwitch.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadSwitch.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadSwitch\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,22:1\n1#2:23\n*E\n"})
/* loaded from: classes7.dex */
public final class i0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final i0 f68447a = new i0();

    private i0() {
    }

    private final String a() {
        return ABTestFactory.f42224a.O0().abTestValue();
    }

    public final boolean b() {
        String a10 = a();
        if (!Intrinsics.areEqual(a10, MBridgeConstans.ENDCARD_URL_TYPE_PL) && a10.length() != 0) {
            return false;
        }
        return true;
    }

    public final boolean c() {
        return Intrinsics.areEqual(a(), "1");
    }
}
