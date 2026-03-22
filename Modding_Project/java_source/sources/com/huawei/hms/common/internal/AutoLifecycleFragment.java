package com.huawei.hms.common.internal;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
import android.util.SparseArray;
import com.huawei.hms.api.HuaweiApiClient;
/* loaded from: classes5.dex */
public class AutoLifecycleFragment extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private final SparseArray<a> f22012a = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    private boolean f22013b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final HuaweiApiClient f22014a;

        /* renamed from: b  reason: collision with root package name */
        protected final int f22015b;

        public a(int i10, HuaweiApiClient huaweiApiClient) {
            this.f22014a = huaweiApiClient;
            this.f22015b = i10;
        }

        public void a() {
            this.f22014a.disconnect();
        }
    }

    public static AutoLifecycleFragment getInstance(Activity activity) {
        Preconditions.checkMainThread("Must be called on the main thread");
        try {
            AutoLifecycleFragment autoLifecycleFragment = (AutoLifecycleFragment) activity.getFragmentManager().findFragmentByTag("HmsAutoLifecycleFrag");
            FragmentManager fragmentManager = activity.getFragmentManager();
            if (autoLifecycleFragment == null) {
                AutoLifecycleFragment autoLifecycleFragment2 = new AutoLifecycleFragment();
                fragmentManager.beginTransaction().add(autoLifecycleFragment2, "HmsAutoLifecycleFrag").commitAllowingStateLoss();
                fragmentManager.executePendingTransactions();
                return autoLifecycleFragment2;
            }
            return autoLifecycleFragment;
        } catch (ClassCastException e10) {
            throw new IllegalStateException("Fragment with tag HmsAutoLifecycleFrag is not a AutoLifecycleFragment", e10);
        }
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f22013b = true;
        for (int i10 = 0; i10 < this.f22012a.size(); i10++) {
            this.f22012a.valueAt(i10).f22014a.connect((Activity) null);
        }
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f22013b = false;
        for (int i10 = 0; i10 < this.f22012a.size(); i10++) {
            this.f22012a.valueAt(i10).f22014a.disconnect();
        }
    }

    public void startAutoMange(int i10, HuaweiApiClient huaweiApiClient) {
        boolean z10;
        Preconditions.checkNotNull(huaweiApiClient, "HuaweiApiClient instance cannot be null");
        if (this.f22012a.indexOfKey(i10) < 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        Preconditions.checkState(z10, "Already managing a HuaweiApiClient with this clientId: " + i10);
        this.f22012a.put(i10, new a(i10, huaweiApiClient));
        if (this.f22013b) {
            huaweiApiClient.connect((Activity) null);
        }
    }

    public void stopAutoManage(int i10) {
        a aVar = this.f22012a.get(i10);
        this.f22012a.remove(i10);
        if (aVar != null) {
            aVar.a();
        }
    }
}
