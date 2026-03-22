package com.drake.brv.reflect;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.reflect.KType;
import org.jetbrains.annotations.NotNull;
/* compiled from: TypeList.kt */
@Metadata
/* loaded from: classes3.dex */
public final class TypeList<T> extends ArrayList<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final KType f13560a;

    public /* bridge */ int e() {
        return super.size();
    }

    @NotNull
    public final KType f() {
        return this.f13560a;
    }

    public /* bridge */ Object g(int i10) {
        return super.remove(i10);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ T remove(int i10) {
        return (T) g(i10);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return e();
    }
}
