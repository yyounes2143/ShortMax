package om;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.explorestack.protobuf.adcom.Ad;
/* compiled from: IabAdObjectParams.java */
/* loaded from: classes7.dex */
class h extends lp.b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public h(@NonNull Ad ad2) {
        super(ad2);
        b().put("creativeId", ad2.getId());
    }

    @Override // lp.b
    public boolean f() {
        Object obj = b().get("creativeAdm");
        if ((obj instanceof CharSequence) && !TextUtils.isEmpty((CharSequence) obj)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        b().put("creativeAdm", str);
    }
}
