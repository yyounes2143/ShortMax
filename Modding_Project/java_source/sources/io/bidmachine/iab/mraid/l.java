package io.bidmachine.iab.mraid;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes7.dex */
public final class l {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final v f54619a = new v();

    @Nullable
    public d a(@NonNull Uri uri) {
        try {
            return this.f54619a.a(Uri.decode(uri.getQueryParameter("eventJson")));
        } catch (Exception e10) {
            h.e("MraidNativeFeatureUrlParser", e10);
            return null;
        }
    }

    @Nullable
    public Uri b(@NonNull Uri uri) {
        try {
            return Uri.parse(Uri.decode(uri.getQueryParameter("url")));
        } catch (Exception e10) {
            h.e("MraidNativeFeatureUrlParser", e10);
            return null;
        }
    }
}
