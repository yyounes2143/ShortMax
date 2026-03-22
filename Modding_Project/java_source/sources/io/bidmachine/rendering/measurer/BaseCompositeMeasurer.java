package io.bidmachine.rendering.measurer;

import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.rendering.measurer.BaseCompositeMeasurer;
import io.bidmachine.rendering.measurer.Measurer;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import rq.t;
import sq.c;
import sq.m;
/* loaded from: classes8.dex */
public class BaseCompositeMeasurer<MeasurerType extends Measurer<ViewType>, ViewType extends View> implements Measurer<ViewType> {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final List<MeasurerType> f58516a;

    public BaseCompositeMeasurer(@NonNull List<MeasurerType> list) {
        this.f58516a = new CopyOnWriteArrayList(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(Handler handler, Runnable runnable) {
        this.f58516a.clear();
        handler.post(runnable);
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void A0(@NonNull ViewType viewtype) {
        for (MeasurerType measurertype : this.f58516a) {
            measurertype.A0(viewtype);
        }
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void R(@Nullable final Runnable runnable) {
        c cVar;
        final Handler a10 = m.a();
        if (runnable != null) {
            cVar = new c(this.f58516a.size(), new Runnable() { // from class: qq.a
                @Override // java.lang.Runnable
                public final void run() {
                    BaseCompositeMeasurer.this.d(a10, runnable);
                }
            });
        } else {
            cVar = null;
        }
        for (MeasurerType measurertype : this.f58516a) {
            measurertype.R(cVar);
        }
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void T(@NonNull ViewType viewtype) {
        for (MeasurerType measurertype : this.f58516a) {
            measurertype.T(viewtype);
        }
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void a(@NonNull t tVar) {
        for (MeasurerType measurertype : this.f58516a) {
            measurertype.a(tVar);
        }
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void onClicked() {
        for (MeasurerType measurertype : this.f58516a) {
            measurertype.onClicked();
        }
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void onShown() {
        for (MeasurerType measurertype : this.f58516a) {
            measurertype.onShown();
        }
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void w(@NonNull ViewType viewtype, @NonNull ViewGroup viewGroup) {
        for (MeasurerType measurertype : this.f58516a) {
            measurertype.w(viewtype, viewGroup);
        }
    }
}
