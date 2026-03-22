package io.bidmachine.analytics.internal;

import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* renamed from: io.bidmachine.analytics.internal.q  reason: case insensitive filesystem */
/* loaded from: classes7.dex */
public abstract class AbstractC3322q {

    /* renamed from: io.bidmachine.analytics.internal.q$a */
    /* loaded from: classes7.dex */
    static final class a extends Lambda implements Function1 {

        /* renamed from: a  reason: collision with root package name */
        public static final a f54316a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public final CharSequence invoke(Object obj) {
            return "?";
        }
    }

    public static final String a(List list, String str) {
        if (list != null) {
            return str + " (" + CollectionsKt.A0(list, ",", null, null, 0, null, a.f54316a, 30, null) + ')';
        }
        return null;
    }

    public static /* synthetic */ void a(List list, SQLiteDatabase sQLiteDatabase, int i10, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 100;
        }
        a(list, sQLiteDatabase, i10, function1);
    }

    public static final void a(List list, SQLiteDatabase sQLiteDatabase, int i10, Function1 function1) {
        if (list == null) {
            function1.invoke(null);
            return;
        }
        sQLiteDatabase.beginTransaction();
        try {
            for (List list2 : CollectionsKt.f0(list, i10)) {
                function1.invoke(list2);
            }
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
        } catch (Throwable th2) {
            sQLiteDatabase.endTransaction();
            throw th2;
        }
    }

    public static final String[] a(List list) {
        if (list != null) {
            ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add((String) it.next());
            }
            return (String[]) arrayList.toArray(new String[0]);
        }
        return null;
    }
}
