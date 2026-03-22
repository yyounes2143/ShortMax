package com.huawei.hms.adapter;

import android.content.Context;
import com.huawei.hms.support.log.HMSLog;
/* loaded from: classes5.dex */
public class InnerBinderAdapter extends BinderAdapter {

    /* renamed from: j  reason: collision with root package name */
    private static final Object f21836j = new Object();

    /* renamed from: k  reason: collision with root package name */
    private static BinderAdapter f21837k;

    private InnerBinderAdapter(Context context, String str, String str2) {
        super(context, str, str2);
    }

    public static BinderAdapter getInstance(Context context, String str, String str2) {
        BinderAdapter binderAdapter;
        HMSLog.i("InnerBinderAdapter", "InnerBinderAdapter getInstance.");
        synchronized (f21836j) {
            try {
                if (f21837k == null) {
                    f21837k = new InnerBinderAdapter(context, str, str2);
                }
                binderAdapter = f21837k;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return binderAdapter;
    }

    @Override // com.huawei.hms.adapter.BinderAdapter
    protected int j() {
        return 2001;
    }

    @Override // com.huawei.hms.adapter.BinderAdapter
    protected int k() {
        return 2002;
    }
}
