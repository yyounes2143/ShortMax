package ai.turbolink.sdk.device;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.helpers.AppPrefHelper;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DeviceId.kt */
@Metadata
/* loaded from: classes.dex */
public final class DeviceId {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String KEY_TURBOLINK_BUNDLE_DEVICEID = "turboLink_bundle_device_id";
    @Nullable
    private String ADSIDString;
    @NotNull
    private final Context _context;
    private boolean isRealId;
    @NotNull
    private String uniqueId;

    /* compiled from: DeviceId.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface AdsFetchListener {
        void onAdsFinish();
    }

    /* compiled from: DeviceId.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getKEY_TURBOLINK_BUNDLE_DEVICEID() {
            return DeviceId.KEY_TURBOLINK_BUNDLE_DEVICEID;
        }

        private Companion() {
        }
    }

    public DeviceId(@NotNull Context context, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.isRealId = !z10;
        this.uniqueId = "";
        this._context = context;
    }

    private final String getAndroidID() {
        String string = Settings.Secure.getString(this._context.getContentResolver(), "android_id");
        if (!string.equals("9774d56d682e549c")) {
            return string;
        }
        return "";
    }

    @Nullable
    public final String getAdsId() {
        return this.ADSIDString;
    }

    @NotNull
    public final String getId() {
        String str;
        String androidID;
        if (!this.isRealId) {
            androidID = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(androidID, "randomUUID().toString()");
        } else {
            boolean idSimpleMode = TurboLink.Companion.getIdSimpleMode();
            AppPrefHelper companion = AppPrefHelper.Companion.getInstance(this._context);
            if (companion != null) {
                str = companion.getString(KEY_TURBOLINK_BUNDLE_DEVICEID);
            } else {
                str = null;
            }
            if (!TextUtils.isEmpty(str)) {
                if (str == null) {
                    androidID = "";
                } else {
                    androidID = str;
                }
            } else {
                if (idSimpleMode) {
                    androidID = UUID.randomUUID().toString();
                    Intrinsics.checkNotNullExpressionValue(androidID, "{\n                    UU…tring()\n                }");
                } else {
                    androidID = getAndroidID();
                    if (androidID == null) {
                        androidID = "";
                    }
                }
                if (TextUtils.isEmpty(androidID)) {
                    androidID = UUID.randomUUID().toString();
                    Intrinsics.checkNotNullExpressionValue(androidID, "randomUUID().toString()");
                }
            }
        }
        AppPrefHelper companion2 = AppPrefHelper.Companion.getInstance(this._context);
        if (companion2 != null) {
            companion2.setString(KEY_TURBOLINK_BUNDLE_DEVICEID, androidID);
        }
        this.uniqueId = androidID;
        return androidID;
    }

    public final boolean isRealId() {
        return this.isRealId;
    }

    public final void setAdsId(@NotNull String adsId) {
        Intrinsics.checkNotNullParameter(adsId, "adsId");
        this.ADSIDString = adsId;
    }

    private final void fetchAdsId(Context context, AdsFetchListener adsFetchListener) {
    }
}
