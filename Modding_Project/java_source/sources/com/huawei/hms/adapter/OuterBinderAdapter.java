package com.huawei.hms.adapter;

import android.content.Context;
import com.huawei.hms.common.internal.Objects;
import com.huawei.hms.support.log.HMSLog;
/* loaded from: classes5.dex */
public class OuterBinderAdapter extends BinderAdapter {

    /* renamed from: j  reason: collision with root package name */
    private static final Object f21838j = new Object();

    /* renamed from: k  reason: collision with root package name */
    private static BinderAdapter f21839k;

    /* renamed from: l  reason: collision with root package name */
    private static String f21840l;

    /* renamed from: m  reason: collision with root package name */
    private static String f21841m;

    private OuterBinderAdapter(Context context, String str, String str2) {
        super(context, str, str2);
    }

    public static BinderAdapter getInstance(Context context, String str, String str2) {
        BinderAdapter binderAdapter;
        HMSLog.i("OuterBinderAdapter", "OuterBinderAdapter getInstance.");
        synchronized (f21838j) {
            try {
                if (f21839k == null) {
                    f21840l = str;
                    f21841m = str2;
                    f21839k = new OuterBinderAdapter(context, str, str2);
                } else if (!Objects.equal(f21840l, str) || !Objects.equal(f21841m, str2)) {
                    HMSLog.i("OuterBinderAdapter", "OuterBinderAdapter getInstance refresh adapter");
                    f21840l = str;
                    f21841m = str2;
                    f21839k.unBind();
                    f21839k = new OuterBinderAdapter(context, str, str2);
                }
                binderAdapter = f21839k;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return binderAdapter;
    }

    @Override // com.huawei.hms.adapter.BinderAdapter
    protected int j() {
        return 1001;
    }

    @Override // com.huawei.hms.adapter.BinderAdapter
    protected int k() {
        return 1002;
    }
}
