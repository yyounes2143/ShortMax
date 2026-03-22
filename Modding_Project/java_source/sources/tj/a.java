package tj;

import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PaymentBtnImp.kt */
@Metadata
/* loaded from: classes7.dex */
public interface a {

    /* compiled from: PaymentBtnImp.kt */
    @Metadata
    /* renamed from: tj.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0931a {
        public static /* synthetic */ void a(a aVar, String str, SubsSku subsSku, String str2, BaseEpisode baseEpisode, com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar2, String str3, SubsSku subsSku2, int i10, Object obj) {
            SubsSku subsSku3;
            String str4;
            BaseEpisode baseEpisode2;
            com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar3;
            String str5;
            if (obj == null) {
                SubsSku subsSku4 = null;
                if ((i10 & 2) != 0) {
                    subsSku3 = null;
                } else {
                    subsSku3 = subsSku;
                }
                if ((i10 & 4) != 0) {
                    str4 = null;
                } else {
                    str4 = str2;
                }
                if ((i10 & 8) != 0) {
                    baseEpisode2 = null;
                } else {
                    baseEpisode2 = baseEpisode;
                }
                if ((i10 & 16) != 0) {
                    aVar3 = null;
                } else {
                    aVar3 = aVar2;
                }
                if ((i10 & 32) != 0) {
                    str5 = null;
                } else {
                    str5 = str3;
                }
                if ((i10 & 64) == 0) {
                    subsSku4 = subsSku2;
                }
                aVar.n(str, subsSku3, str4, baseEpisode2, aVar3, str5, subsSku4);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: initSubsSku");
        }
    }

    void l(@NotNull String str, @Nullable CoinSku coinSku, @Nullable String str2, @Nullable BaseEpisode baseEpisode, @Nullable com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, @Nullable String str3);

    void n(@NotNull String str, @Nullable SubsSku subsSku, @Nullable String str2, @Nullable BaseEpisode baseEpisode, @Nullable com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, @Nullable String str3, @Nullable SubsSku subsSku2);

    boolean p();

    void setBtnVisibility(int i10);
}
