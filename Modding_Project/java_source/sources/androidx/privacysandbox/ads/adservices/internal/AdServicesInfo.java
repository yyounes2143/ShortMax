package androidx.privacysandbox.ads.adservices.internal;

import android.os.Build;
import android.os.ext.SdkExtensions;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: AdServicesInfo.kt */
@Metadata
/* loaded from: classes2.dex */
public final class AdServicesInfo {
    @NotNull
    public static final AdServicesInfo INSTANCE = new AdServicesInfo();

    /* compiled from: AdServicesInfo.kt */
    @RequiresApi(30)
    @Metadata
    /* loaded from: classes2.dex */
    private static final class Extensions30ExtImpl {
        @NotNull
        public static final Extensions30ExtImpl INSTANCE = new Extensions30ExtImpl();

        private Extensions30ExtImpl() {
        }

        @DoNotInline
        public final int getAdExtServicesVersionS() {
            int extensionVersion;
            extensionVersion = SdkExtensions.getExtensionVersion(31);
            return extensionVersion;
        }
    }

    /* compiled from: AdServicesInfo.kt */
    @RequiresApi(30)
    @Metadata
    /* loaded from: classes2.dex */
    private static final class Extensions30Impl {
        @NotNull
        public static final Extensions30Impl INSTANCE = new Extensions30Impl();

        private Extensions30Impl() {
        }

        @DoNotInline
        public final int getAdServicesVersion() {
            int extensionVersion;
            extensionVersion = SdkExtensions.getExtensionVersion(TTVideoEngineInterface.PLAYER_TIME_BASE);
            return extensionVersion;
        }
    }

    private AdServicesInfo() {
    }

    public final int adServicesVersion() {
        if (Build.VERSION.SDK_INT >= 33) {
            return Extensions30Impl.INSTANCE.getAdServicesVersion();
        }
        return 0;
    }

    public final int extServicesVersionS() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 != 31 && i10 != 32) {
            return 0;
        }
        return Extensions30ExtImpl.INSTANCE.getAdExtServicesVersionS();
    }
}
