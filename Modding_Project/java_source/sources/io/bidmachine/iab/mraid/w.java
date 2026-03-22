package io.bidmachine.iab.mraid;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.entity.CampaignEx;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class w {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public String a(@Nullable String str) {
        try {
            return new Uri.Builder().scheme("calendar").authority(CampaignEx.JSON_KEY_MRAID).appendQueryParameter("eventJson", str).build().toString();
        } catch (Exception e10) {
            h.e("MraidNativeFeatureUrlFactory", e10);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public String b(@Nullable String str) {
        try {
            return new Uri.Builder().scheme("storePicture").authority(CampaignEx.JSON_KEY_MRAID).appendQueryParameter("url", str).build().toString();
        } catch (Exception e10) {
            h.e("MraidNativeFeatureUrlFactory", e10);
            return null;
        }
    }
}
