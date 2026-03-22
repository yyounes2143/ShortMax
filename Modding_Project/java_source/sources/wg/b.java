package wg;

import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.startshorts.androidplayer.log.Logger;
import gt.i;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FirebaseTokenRemoteDS.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFirebaseTokenRemoteDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseTokenRemoteDS.kt\ncom/startshorts/androidplayer/repo/firebase/FirebaseTokenRemoteDS\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,66:1\n426#2,11:67\n*S KotlinDebug\n*F\n+ 1 FirebaseTokenRemoteDS.kt\ncom/startshorts/androidplayer/repo/firebase/FirebaseTokenRemoteDS\n*L\n27#1:67,11\n*E\n"})
/* loaded from: classes7.dex */
public final class b {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f69854b = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f69855a;

    /* compiled from: FirebaseTokenRemoteDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: FirebaseTokenRemoteDS.kt */
    @Metadata
    /* renamed from: wg.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    static final class C0961b implements Function1<p7.c, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f69857b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ i<String> f69858c;

        /* JADX WARN: Multi-variable type inference failed */
        C0961b(String str, i<? super String> iVar) {
            this.f69857b = str;
            this.f69858c = iVar;
        }

        public final void a(p7.c cVar) {
            if (!Intrinsics.areEqual(b.this.f69855a, this.f69857b)) {
                Logger logger = Logger.f41511a;
                logger.e("FirebaseRemoteDS", "ignore appCheck success -> appCheckId(" + this.f69857b + ") mCurrentAppCheckId(" + b.this.f69855a + ')');
                jk.e.a(this.f69858c, "");
                return;
            }
            String b10 = cVar.b();
            Intrinsics.checkNotNullExpressionValue(b10, "getToken(...)");
            if (b10.length() == 0) {
                Logger.f41511a.e("FirebaseRemoteDS", "appCheck failed -> empty token");
                jk.e.a(this.f69858c, "");
                return;
            }
            Logger logger2 = Logger.f41511a;
            logger2.h("FirebaseRemoteDS", "appCheck success -> token(" + cVar.b() + ')');
            i<String> iVar = this.f69858c;
            Result.a aVar = Result.f60901b;
            iVar.resumeWith(Result.d(cVar.b()));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(p7.c cVar) {
            a(cVar);
            return Unit.f60915a;
        }
    }

    /* compiled from: FirebaseTokenRemoteDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    static final class c implements OnCanceledListener {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f69860b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ i<String> f69861c;

        /* JADX WARN: Multi-variable type inference failed */
        c(String str, i<? super String> iVar) {
            this.f69860b = str;
            this.f69861c = iVar;
        }

        @Override // com.google.android.gms.tasks.OnCanceledListener
        public final void onCanceled() {
            if (!Intrinsics.areEqual(b.this.f69855a, this.f69860b)) {
                Logger logger = Logger.f41511a;
                logger.e("FirebaseRemoteDS", "ignore appCheck cancel -> appCheckId(" + this.f69860b + ") mCurrentAppCheckId(" + b.this.f69855a + ')');
            } else {
                Logger.f41511a.e("FirebaseRemoteDS", "appCheck canceled");
            }
            jk.e.a(this.f69861c, "");
        }
    }

    /* compiled from: FirebaseTokenRemoteDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    static final class d implements OnFailureListener {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f69863b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ i<String> f69864c;

        /* JADX WARN: Multi-variable type inference failed */
        d(String str, i<? super String> iVar) {
            this.f69863b = str;
            this.f69864c = iVar;
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public final void onFailure(Exception e10) {
            Intrinsics.checkNotNullParameter(e10, "e");
            if (!Intrinsics.areEqual(b.this.f69855a, this.f69863b)) {
                Logger logger = Logger.f41511a;
                logger.e("FirebaseRemoteDS", "ignore appCheck failed -> appCheckId(" + this.f69863b + ") mCurrentAppCheckId(" + b.this.f69855a + ')');
            } else {
                Logger logger2 = Logger.f41511a;
                logger2.e("FirebaseRemoteDS", "appCheck failed -> " + e10.getMessage());
            }
            jk.e.a(this.f69864c, "");
        }
    }

    /* compiled from: FirebaseTokenRemoteDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    static final class e implements OnSuccessListener {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f69865a;

        e(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f69865a = function;
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public final /* synthetic */ void onSuccess(Object obj) {
            this.f69865a.invoke(obj);
        }
    }

    @Nullable
    public final Object b(@NotNull rs.c<? super String> cVar) {
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
        this.f69855a = uuid;
        try {
            p7.e c10 = p7.e.c();
            Intrinsics.checkNotNull(c10);
            kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
            eVar.H();
            c10.b(true).addOnSuccessListener(new e(new C0961b(uuid, eVar))).addOnCanceledListener(new c(uuid, eVar)).addOnFailureListener(new d(uuid, eVar));
            Object B = eVar.B();
            if (B == kotlin.coroutines.intrinsics.a.f()) {
                f.c(cVar);
            }
            return B;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("FirebaseRemoteDS", "getFirebaseToken failed -> " + e10.getMessage());
            return "";
        }
    }
}
