package ve;

import com.startshorts.androidplayer.log.Logger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: DialogManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDialogManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogManager.kt\ncom/startshorts/androidplayer/manager/dialog/DialogManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,231:1\n1611#2,9:232\n1863#2:241\n1864#2:243\n1620#2:244\n774#2:245\n865#2,2:246\n1863#2,2:248\n774#2:250\n865#2,2:251\n774#2:253\n865#2,2:254\n1863#2,2:257\n2632#2,3:263\n295#2,2:266\n1#3:242\n1#3:256\n37#4:259\n36#4,3:260\n*S KotlinDebug\n*F\n+ 1 DialogManager.kt\ncom/startshorts/androidplayer/manager/dialog/DialogManager\n*L\n24#1:232,9\n24#1:241\n24#1:243\n24#1:244\n33#1:245\n33#1:246,2\n51#1:248,2\n60#1:250\n60#1:251,2\n77#1:253\n77#1:254,2\n86#1:257,2\n124#1:263,3\n125#1:266,2\n24#1:242\n153#1:259\n153#1:260,3\n*E\n"})
/* loaded from: classes6.dex */
public final class g<T> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f68901e = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private Function1<? super c<T>, Unit> f68902a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private Function2<? super c<T>, ? super List<c<T>>, Unit> f68903b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final List<c<T>> f68904c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Object f68905d;

    /* compiled from: DialogManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public g() {
        this(null, null, 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d(c it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e(c cVar, List list) {
        Intrinsics.checkNotNullParameter(cVar, "<unused var>");
        Intrinsics.checkNotNullParameter(list, "<unused var>");
        return Unit.f60915a;
    }

    private final void l(c<T> cVar) {
        Logger logger = Logger.f41511a;
        logger.h("DialogManager", "removeFromDialogDelegateList -> " + cVar);
        this.f68904c.remove(cVar);
    }

    private final boolean n(final c<T> cVar) {
        Boolean invoke = cVar.l().invoke(new Function0() { // from class: ve.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit o10;
                o10 = g.o(c.this, this);
                return o10;
            }
        });
        boolean booleanValue = invoke.booleanValue();
        Logger logger = Logger.f41511a;
        logger.h("DialogManager", "showInOrder -> showSucceed=" + booleanValue + ", dialogDelegate=" + cVar + ",DialogDelegateList=" + this.f68904c);
        if (booleanValue) {
            this.f68902a.invoke(cVar);
        } else {
            l(cVar);
        }
        return invoke.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o(c cVar, g gVar) {
        T t10;
        if (cVar.n()) {
            cVar.q(false);
        } else {
            gVar.l(cVar);
        }
        List<c<T>> list = gVar.f68904c;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (((c) it.next()).o()) {
                    break;
                }
            }
        }
        Iterator<T> it2 = gVar.f68904c.iterator();
        while (true) {
            if (it2.hasNext()) {
                t10 = it2.next();
                if (!((c) t10).o()) {
                    break;
                }
            } else {
                t10 = null;
                break;
            }
        }
        c<T> cVar2 = (c) t10;
        if (cVar2 != null) {
            Logger logger = Logger.f41511a;
            logger.h("DialogManager", "showInOrder -> show next dialog when dismiss,DialogDelegateList=" + gVar.f68904c);
            gVar.n(cVar2);
        }
        gVar.f68903b.invoke(cVar, gVar.f68904c);
        return Unit.f60915a;
    }

    public final void f() {
        Logger.f41511a.h("DialogManager", "clearAllDialog");
        List<c> d12 = CollectionsKt.d1(this.f68904c);
        this.f68904c.clear();
        for (c cVar : d12) {
            Function0<Unit> j10 = cVar.j();
            if (j10 != null) {
                j10.invoke();
            }
        }
    }

    public final void g(@NotNull c<T> dialogDelegate) {
        Function0<Unit> j10;
        Intrinsics.checkNotNullParameter(dialogDelegate, "dialogDelegate");
        l(dialogDelegate);
        if (dialogDelegate.o() && (j10 = dialogDelegate.j()) != null) {
            j10.invoke();
        }
    }

    @NotNull
    public final List<T> h() {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = k().iterator();
        while (it.hasNext()) {
            Object i10 = ((c) it.next()).i();
            if (i10 != null) {
                arrayList.add(i10);
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<c<T>> i() {
        return this.f68904c;
    }

    public final int j() {
        return k().size();
    }

    @NotNull
    public final List<c<T>> k() {
        ArrayList arrayList = new ArrayList();
        for (T t10 : this.f68904c) {
            if (((c) t10).o()) {
                arrayList.add(t10);
            }
        }
        return arrayList;
    }

    public final boolean m(@NotNull c<T> dialogDelegate) {
        Integer num;
        int i10;
        boolean n10;
        boolean z10 = true;
        Intrinsics.checkNotNullParameter(dialogDelegate, "dialogDelegate");
        synchronized (this.f68905d) {
            try {
                ArrayList arrayList = new ArrayList();
                for (T t10 : this.f68904c) {
                    if (((c) t10).o()) {
                        arrayList.add(t10);
                    }
                }
                List<c> g12 = CollectionsKt.g1(arrayList);
                int size = this.f68904c.size();
                int i11 = 0;
                while (true) {
                    if (i11 < size) {
                        if (dialogDelegate.k() >= this.f68904c.get(i11).k()) {
                            this.f68904c.add(i11, dialogDelegate);
                            break;
                        }
                        i11++;
                    } else {
                        this.f68904c.add(dialogDelegate);
                        break;
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                for (T t11 : this.f68904c) {
                    if (((c) t11).o()) {
                        arrayList2.add(t11);
                    }
                }
                Iterator<T> it = arrayList2.iterator();
                if (!it.hasNext()) {
                    num = null;
                } else {
                    Integer valueOf = Integer.valueOf(((c) it.next()).k());
                    while (it.hasNext()) {
                        Integer valueOf2 = Integer.valueOf(((c) it.next()).k());
                        if (valueOf.compareTo(valueOf2) < 0) {
                            valueOf = valueOf2;
                        }
                    }
                    num = valueOf;
                }
                if (num != null) {
                    i10 = num.intValue();
                } else {
                    i10 = 0;
                }
                if (!dialogDelegate.e() || dialogDelegate.k() < i10) {
                    z10 = false;
                }
                if (!g12.isEmpty() && !z10) {
                    n10 = n(dialogDelegate);
                    if (n10) {
                        for (c cVar : g12) {
                            if (cVar.f() && dialogDelegate.k() >= cVar.k()) {
                                cVar.q(cVar.m());
                                Function0<Unit> j10 = cVar.j();
                                if (j10 != null) {
                                    j10.invoke();
                                }
                                if (cVar.m()) {
                                    cVar.h();
                                }
                            } else {
                                Logger.f41511a.h("DialogManager", "show -> showing dialog can not be dismissed," + dialogDelegate);
                            }
                        }
                    }
                    Unit unit = Unit.f60915a;
                }
                n10 = n(dialogDelegate);
                Unit unit2 = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return n10;
    }

    public g(@NotNull Function1<? super c<T>, Unit> onShow, @NotNull Function2<? super c<T>, ? super List<c<T>>, Unit> onDismiss) {
        Intrinsics.checkNotNullParameter(onShow, "onShow");
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        this.f68902a = onShow;
        this.f68903b = onDismiss;
        this.f68904c = new ArrayList();
        this.f68905d = new Object();
    }

    public /* synthetic */ g(Function1 function1, Function2 function2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new Function1() { // from class: ve.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit d10;
                d10 = g.d((c) obj);
                return d10;
            }
        } : function1, (i10 & 2) != 0 ? new Function2() { // from class: ve.e
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit e10;
                e10 = g.e((c) obj, (List) obj2);
                return e10;
            }
        } : function2);
    }
}
