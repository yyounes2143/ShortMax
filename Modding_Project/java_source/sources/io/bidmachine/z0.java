package io.bidmachine;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppIdDataManager.java */
/* loaded from: classes7.dex */
public class z0 {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f58739a = new AtomicBoolean(false);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private volatile String f58740b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AppIdDataManager.java */
    /* loaded from: classes7.dex */
    public class a implements OnSuccessListener<AppSetIdInfo> {
        a() {
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        @UiThread
        /* renamed from: a */
        public void onSuccess(AppSetIdInfo appSetIdInfo) {
            if (appSetIdInfo.getScope() == 2) {
                z0.this.f58740b = appSetIdInfo.getId();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(Context context) throws Throwable {
        AppSet.getClient(context).getAppSetIdInfo().addOnSuccessListener(new a());
    }

    @Nullable
    public String c() {
        return this.f58740b;
    }

    public void e(@NonNull final Context context) {
        if (!this.f58739a.compareAndSet(false, true)) {
            return;
        }
        v2.a().execute(new vm.a() { // from class: io.bidmachine.y0
            @Override // fr.h
            public final void s() {
                z0.this.d(context);
            }
        });
    }
}
