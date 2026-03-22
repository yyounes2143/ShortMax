package om;

import androidx.annotation.NonNull;
import com.explorestack.protobuf.adcom.Ad;
/* compiled from: DisplayAdObjectParams.java */
/* loaded from: classes7.dex */
class a extends h {
    /* JADX INFO: Access modifiers changed from: package-private */
    public a(@NonNull Ad ad2) {
        super(ad2);
        g(ad2.getDisplay().getEventList());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(int i10) {
        b().put("height", Integer.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(int i10) {
        b().put("width", Integer.valueOf(i10));
    }
}
