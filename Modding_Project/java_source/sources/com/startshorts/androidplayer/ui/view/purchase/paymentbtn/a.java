package com.startshorts.androidplayer.ui.view.purchase.paymentbtn;

import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: PaymentClikcListener.kt */
@Metadata
/* loaded from: classes7.dex */
public interface a {

    /* compiled from: PaymentClikcListener.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0648a {
        public static /* synthetic */ void a(a aVar, int i10, CoinSku coinSku, SubsSku subsSku, int i11, Object obj) {
            if (obj == null) {
                if ((i11 & 2) != 0) {
                    coinSku = null;
                }
                if ((i11 & 4) != 0) {
                    subsSku = null;
                }
                aVar.a(i10, coinSku, subsSku);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onFlavorOtherPay");
        }

        public static /* synthetic */ void b(a aVar, int i10, CoinSku coinSku, SubsSku subsSku, SubsSku subsSku2, int i11, Object obj) {
            if (obj == null) {
                if ((i11 & 2) != 0) {
                    coinSku = null;
                }
                if ((i11 & 4) != 0) {
                    subsSku = null;
                }
                if ((i11 & 8) != 0) {
                    subsSku2 = null;
                }
                aVar.c(i10, coinSku, subsSku, subsSku2);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onFlavorPay");
        }

        public static /* synthetic */ void c(a aVar, int i10, CoinSku coinSku, SubsSku subsSku, int i11, Object obj) {
            if (obj == null) {
                if ((i11 & 2) != 0) {
                    coinSku = null;
                }
                if ((i11 & 4) != 0) {
                    subsSku = null;
                }
                aVar.b(i10, coinSku, subsSku);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onOtherPay");
        }
    }

    void a(int i10, @Nullable CoinSku coinSku, @Nullable SubsSku subsSku);

    void b(int i10, @Nullable CoinSku coinSku, @Nullable SubsSku subsSku);

    void c(int i10, @Nullable CoinSku coinSku, @Nullable SubsSku subsSku, @Nullable SubsSku subsSku2);
}
