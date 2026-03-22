package io.bidmachine.analytics.internal;

import android.database.sqlite.SQLiteOpenHelper;
import io.bidmachine.analytics.internal.h0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes7.dex */
public final class m0 implements l0 {

    /* renamed from: a  reason: collision with root package name */
    private final SQLiteOpenHelper f54178a;

    /* renamed from: b  reason: collision with root package name */
    private final ms.i f54179b = kotlin.c.b(new a());

    /* loaded from: classes7.dex */
    static final class a extends Lambda implements Function0 {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final i0 invoke() {
            return new i0(m0.this.f54178a);
        }
    }

    public m0(SQLiteOpenHelper sQLiteOpenHelper) {
        this.f54178a = sQLiteOpenHelper;
    }

    @Override // io.bidmachine.analytics.internal.l0
    public Object b(h0 h0Var) {
        return a().a(k0.a(h0Var));
    }

    @Override // io.bidmachine.analytics.internal.l0
    public Object c(List list) {
        i0 a10 = a();
        ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(k0.a((h0) it.next()));
        }
        return a10.d(arrayList);
    }

    private final i0 a() {
        return (i0) this.f54179b.getValue();
    }

    @Override // io.bidmachine.analytics.internal.l0
    public Object b(List list) {
        i0 a10 = a();
        ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(k0.a((h0) it.next()));
        }
        return a10.a(arrayList);
    }

    @Override // io.bidmachine.analytics.internal.l0
    public Object a(h0 h0Var) {
        return a().c(k0.a(h0Var));
    }

    @Override // io.bidmachine.analytics.internal.l0
    public Object a(String str, h0.a aVar) {
        Object a10 = a().a(str, k0.a(aVar).toString());
        try {
            Result.a aVar2 = Result.f60901b;
            kotlin.f.b(a10);
            j0 j0Var = (j0) a10;
            return Result.d(j0Var != null ? k0.a(j0Var) : null);
        } catch (Throwable th2) {
            Result.a aVar3 = Result.f60901b;
            return Result.d(kotlin.f.a(th2));
        }
    }

    @Override // io.bidmachine.analytics.internal.l0
    public Object a(String str) {
        return a(a().a(str));
    }

    @Override // io.bidmachine.analytics.internal.l0
    public Object a(List list) {
        i0 a10 = a();
        ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(k0.a((h0) it.next()));
        }
        return a10.e(arrayList);
    }

    public final Object b() {
        return a().b();
    }

    @Override // io.bidmachine.analytics.internal.l0
    public Object a(String str, List list) {
        i0 a10 = a();
        ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(k0.a((h0.a) it.next()).toString());
        }
        return a10.a(str, arrayList);
    }

    @Override // io.bidmachine.analytics.internal.l0
    public Object a(List list, List list2) {
        a().b(list);
        i0 a10 = a();
        ArrayList arrayList = new ArrayList(CollectionsKt.z(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(k0.a((h0.a) it.next()).toString());
        }
        a10.c(arrayList);
        Result.a aVar = Result.f60901b;
        return Result.d(Unit.f60915a);
    }

    private final Object a(Object obj) {
        try {
            Result.a aVar = Result.f60901b;
            kotlin.f.b(obj);
            Iterable<j0> iterable = (Iterable) obj;
            ArrayList arrayList = new ArrayList(CollectionsKt.z(iterable, 10));
            for (j0 j0Var : iterable) {
                arrayList.add(k0.a(j0Var));
            }
            return Result.d(arrayList);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            return Result.d(kotlin.f.a(th2));
        }
    }
}
