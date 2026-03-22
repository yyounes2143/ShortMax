package q1;

import a2.h;
import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import androidx.annotation.UiThread;
import com.facebook.appevents.h0;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MetadataViewObserver.kt */
@Metadata
/* loaded from: classes3.dex */
public final class f implements ViewTreeObserver.OnGlobalFocusChangeListener {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f65032e = new a(null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final Map<Integer, f> f65033f = new HashMap();
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Set<String> f65034a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Handler f65035b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference<Activity> f65036c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f65037d;

    /* compiled from: MetadataViewObserver.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nMetadataViewObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetadataViewObserver.kt\ncom/facebook/appevents/aam/MetadataViewObserver$Companion\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,165:1\n361#2,7:166\n37#3,2:173\n*S KotlinDebug\n*F\n+ 1 MetadataViewObserver.kt\ncom/facebook/appevents/aam/MetadataViewObserver$Companion\n*L\n126#1:166,7\n157#1:173,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String c(String str, String str2) {
            if (Intrinsics.areEqual("r2", str)) {
                return new Regex("[^\\d.]").replace(str2, "");
            }
            return str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
            if (r7.equals("r5") == false) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0042, code lost:
            if (r7.equals("r4") == false) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0045, code lost:
            r8 = new kotlin.text.Regex("[^a-z]+").replace(r8, "");
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void d(java.util.Map<java.lang.String, java.lang.String> r6, java.lang.String r7, java.lang.String r8) {
            /*
                r5 = this;
                int r0 = r7.hashCode()
                r1 = 0
                r2 = 2
                r3 = 0
                switch(r0) {
                    case 3585: goto L53;
                    case 3586: goto L3c;
                    case 3587: goto L33;
                    case 3588: goto Lc;
                    default: goto La;
                }
            La:
                goto L79
            Lc:
                java.lang.String r0 = "r6"
                boolean r0 = r7.equals(r0)
                if (r0 != 0) goto L15
                goto L79
            L15:
                java.lang.String r0 = "-"
                boolean r1 = kotlin.text.StringsKt.b0(r8, r0, r3, r2, r1)
                if (r1 == 0) goto L79
                kotlin.text.Regex r1 = new kotlin.text.Regex
                r1.<init>(r0)
                java.util.List r8 = r1.q(r8, r3)
                java.util.Collection r8 = (java.util.Collection) r8
                java.lang.String[] r0 = new java.lang.String[r3]
                java.lang.Object[] r8 = r8.toArray(r0)
                java.lang.String[] r8 = (java.lang.String[]) r8
                r8 = r8[r3]
                goto L79
            L33:
                java.lang.String r0 = "r5"
                boolean r0 = r7.equals(r0)
                if (r0 != 0) goto L45
                goto L79
            L3c:
                java.lang.String r0 = "r4"
                boolean r0 = r7.equals(r0)
                if (r0 != 0) goto L45
                goto L79
            L45:
                kotlin.text.Regex r0 = new kotlin.text.Regex
                java.lang.String r1 = "[^a-z]+"
                r0.<init>(r1)
                java.lang.String r1 = ""
                java.lang.String r8 = r0.replace(r8, r1)
                goto L79
            L53:
                java.lang.String r0 = "r3"
                boolean r0 = r7.equals(r0)
                if (r0 != 0) goto L5c
                goto L79
            L5c:
                java.lang.String r0 = "m"
                boolean r4 = kotlin.text.StringsKt.V(r8, r0, r3, r2, r1)
                if (r4 != 0) goto L78
                java.lang.String r4 = "b"
                boolean r4 = kotlin.text.StringsKt.V(r8, r4, r3, r2, r1)
                if (r4 != 0) goto L78
                java.lang.String r4 = "ge"
                boolean r8 = kotlin.text.StringsKt.V(r8, r4, r3, r2, r1)
                if (r8 == 0) goto L75
                goto L78
            L75:
                java.lang.String r8 = "f"
                goto L79
            L78:
                r8 = r0
            L79:
                r6.put(r7, r8)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: q1.f.a.d(java.util.Map, java.lang.String, java.lang.String):void");
        }

        @UiThread
        public final void e(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            int hashCode = activity.hashCode();
            Map b10 = f.b();
            Integer valueOf = Integer.valueOf(hashCode);
            Object obj = b10.get(valueOf);
            if (obj == null) {
                obj = new f(activity, null);
                b10.put(valueOf, obj);
            }
            f.c((f) obj);
        }

        private a() {
        }
    }

    public /* synthetic */ f(Activity activity, DefaultConstructorMarker defaultConstructorMarker) {
        this(activity);
    }

    public static final /* synthetic */ Map b() {
        if (o4.a.d(f.class)) {
            return null;
        }
        try {
            return f65033f;
        } catch (Throwable th2) {
            o4.a.b(th2, f.class);
            return null;
        }
    }

    public static final /* synthetic */ void c(f fVar) {
        if (o4.a.d(f.class)) {
            return;
        }
        try {
            fVar.h();
        } catch (Throwable th2) {
            o4.a.b(th2, f.class);
        }
    }

    private final void d(final View view) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            g(new Runnable() { // from class: q1.e
                @Override // java.lang.Runnable
                public final void run() {
                    f.e(view, this);
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(View view, f this$0) {
        if (o4.a.d(f.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(view, "$view");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            if (!(view instanceof EditText)) {
                return;
            }
            this$0.f(view);
        } catch (Throwable th2) {
            o4.a.b(th2, f.class);
        }
    }

    private final void f(View view) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNull(view, "null cannot be cast to non-null type android.widget.EditText");
            String lowerCase = StringsKt.v1(((EditText) view).getText().toString()).toString().toLowerCase();
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
            if (lowerCase.length() != 0 && !this.f65034a.contains(lowerCase) && lowerCase.length() <= 100) {
                this.f65034a.add(lowerCase);
                HashMap hashMap = new HashMap();
                List<String> b10 = c.b(view);
                List<String> list = null;
                for (d dVar : d.f65025d.c()) {
                    a aVar = f65032e;
                    String c10 = aVar.c(dVar.c(), lowerCase);
                    if (dVar.d().length() <= 0 || c.f(c10, dVar.d())) {
                        if (c.e(b10, dVar.b())) {
                            aVar.d(hashMap, dVar.c(), c10);
                        } else {
                            if (list == null) {
                                list = c.a(view);
                            }
                            if (c.e(list, dVar.b())) {
                                aVar.d(hashMap, dVar.c(), c10);
                            }
                        }
                    }
                }
                h0.f15017b.f(hashMap);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final void g(Runnable runnable) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                runnable.run();
            } else {
                this.f65035b.post(runnable);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final void h() {
        View d10;
        if (o4.a.d(this)) {
            return;
        }
        try {
            if (this.f65037d.getAndSet(true) || (d10 = h.d(this.f65036c.get())) == null) {
                return;
            }
            ViewTreeObserver viewTreeObserver = d10.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnGlobalFocusChangeListener(this);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public void onGlobalFocusChanged(@Nullable View view, @Nullable View view2) {
        if (o4.a.d(this)) {
            return;
        }
        if (view != null) {
            try {
                d(view);
            } catch (Throwable th2) {
                o4.a.b(th2, this);
                return;
            }
        }
        if (view2 != null) {
            d(view2);
        }
    }

    private f(Activity activity) {
        this.f65034a = new LinkedHashSet();
        this.f65035b = new Handler(Looper.getMainLooper());
        this.f65036c = new WeakReference<>(activity);
        this.f65037d = new AtomicBoolean(false);
    }
}
