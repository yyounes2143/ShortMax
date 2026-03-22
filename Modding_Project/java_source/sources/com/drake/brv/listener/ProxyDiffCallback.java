package com.drake.brv.listener;

import androidx.recyclerview.widget.DiffUtil;
import java.util.List;
import kotlin.Metadata;
import m1.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProxyDiffCallback.kt */
@Metadata
/* loaded from: classes3.dex */
public final class ProxyDiffCallback extends DiffUtil.Callback {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final List<Object> f13557a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final List<Object> f13558b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final a f13559c;

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public boolean areContentsTheSame(int i10, int i11) {
        List<Object> list = this.f13558b;
        if (list == null || this.f13557a == null) {
            return false;
        }
        Object obj = list.get(i10);
        Object obj2 = this.f13557a.get(i11);
        if (obj != null && obj2 != null) {
            return this.f13559c.b(obj, obj2);
        }
        if (obj != null || obj2 != null) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public boolean areItemsTheSame(int i10, int i11) {
        List<Object> list = this.f13558b;
        if (list == null || this.f13557a == null) {
            return false;
        }
        Object obj = list.get(i10);
        Object obj2 = this.f13557a.get(i11);
        if (obj != null && obj2 != null) {
            return this.f13559c.a(obj, obj2);
        }
        if (obj != null || obj2 != null) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    @Nullable
    public Object getChangePayload(int i10, int i11) {
        List<Object> list = this.f13558b;
        if (list == null || this.f13557a == null) {
            return null;
        }
        Object obj = list.get(i10);
        Object obj2 = this.f13557a.get(i11);
        if (obj == null || obj2 == null) {
            return null;
        }
        return this.f13559c.c(obj, obj2);
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public int getNewListSize() {
        List<Object> list = this.f13557a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public int getOldListSize() {
        List<Object> list = this.f13558b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }
}
