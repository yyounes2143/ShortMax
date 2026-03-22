package com.bytedance.dr;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public interface OaidApi {

    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f12547a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f12548b;
    }

    String getName();

    @Nullable
    a getOaid(@NonNull Context context);

    boolean support(Context context);
}
