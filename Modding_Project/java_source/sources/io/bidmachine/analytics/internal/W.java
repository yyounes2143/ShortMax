package io.bidmachine.analytics.internal;

import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes7.dex */
public final class W implements V {

    /* renamed from: a  reason: collision with root package name */
    private final SQLiteOpenHelper f54013a;

    /* renamed from: b  reason: collision with root package name */
    private final ms.i f54014b = kotlin.c.b(new a());

    /* loaded from: classes7.dex */
    static final class a extends Lambda implements Function0 {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final S invoke() {
            return new S(W.this.f54013a);
        }
    }

    public W(SQLiteOpenHelper sQLiteOpenHelper) {
        this.f54013a = sQLiteOpenHelper;
    }

    @Override // io.bidmachine.analytics.internal.V
    public Object b(List list) {
        S a10 = a();
        ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(U.a((Q) it.next()));
        }
        return a10.a(arrayList);
    }

    @Override // io.bidmachine.analytics.internal.V
    public Object c(List list) {
        S a10 = a();
        ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(U.a((Q) it.next()));
        }
        return a10.b(arrayList);
    }

    private final S a() {
        return (S) this.f54014b.getValue();
    }

    @Override // io.bidmachine.analytics.internal.V
    public Object a(Q q10) {
        return a().a(U.a(q10));
    }

    @Override // io.bidmachine.analytics.internal.V
    public Object a(String str, String str2) {
        return a(a().a(str, str2));
    }

    @Override // io.bidmachine.analytics.internal.V
    public Object a(String str, String str2, int i10) {
        return a(a().a(str, str2, Integer.valueOf(i10)));
    }

    public final Object b() {
        return a().a();
    }

    @Override // io.bidmachine.analytics.internal.V
    public Object a(List list) {
        S a10 = a();
        ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(U.a((Q) it.next()));
        }
        return a10.c(arrayList);
    }

    @Override // io.bidmachine.analytics.internal.V
    public Object a(String str, List list) {
        return a().a(str, list);
    }

    private final Object a(Object obj) {
        try {
            Result.a aVar = Result.f60901b;
            kotlin.f.b(obj);
            Iterable<T> iterable = (Iterable) obj;
            ArrayList arrayList = new ArrayList(CollectionsKt.z(iterable, 10));
            for (T t10 : iterable) {
                arrayList.add(U.a(t10));
            }
            return Result.d(arrayList);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            return Result.d(kotlin.f.a(th2));
        }
    }
}
