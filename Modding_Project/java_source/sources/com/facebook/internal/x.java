package com.facebook.internal;

import android.app.Activity;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FragmentWrapper.kt */
@Metadata
/* loaded from: classes3.dex */
public final class x {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Fragment f16356a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private android.app.Fragment f16357b;

    public x(@NotNull Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.f16356a = fragment;
    }

    @Nullable
    public final Activity a() {
        Fragment fragment = this.f16356a;
        if (fragment != null) {
            if (fragment == null) {
                return null;
            }
            return fragment.getActivity();
        }
        android.app.Fragment fragment2 = this.f16357b;
        if (fragment2 == null) {
            return null;
        }
        return fragment2.getActivity();
    }

    @Nullable
    public final android.app.Fragment b() {
        return this.f16357b;
    }

    @Nullable
    public final Fragment c() {
        return this.f16356a;
    }

    public final void d(@Nullable Intent intent, int i10) {
        Fragment fragment = this.f16356a;
        if (fragment != null) {
            if (fragment != null) {
                fragment.startActivityForResult(intent, i10);
                return;
            }
            return;
        }
        android.app.Fragment fragment2 = this.f16357b;
        if (fragment2 != null) {
            fragment2.startActivityForResult(intent, i10);
        }
    }

    public x(@NotNull android.app.Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.f16357b = fragment;
    }
}
