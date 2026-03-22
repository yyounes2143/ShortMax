package io.bidmachine.iab.measurer;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import java.io.Serializable;
import qm.a;
/* loaded from: classes7.dex */
public interface AdMeasurer<AdView extends View> extends Serializable {
    void c(@NonNull a aVar);

    void l(@NonNull ViewGroup viewGroup);

    void m(@NonNull AdView adview);

    void onAdClicked();

    void onAdShown();

    void t0(@NonNull AdView adview);
}
