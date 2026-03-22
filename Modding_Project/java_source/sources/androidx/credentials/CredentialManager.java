package androidx.credentials;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.os.CancellationSignal;
import androidx.annotation.RequiresApi;
import androidx.credentials.PrepareGetCredentialResponse;
import androidx.credentials.exceptions.ClearCredentialException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.GetCredentialException;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CredentialManager.kt */
@Metadata
@SuppressLint({"ObsoleteSdkInt"})
@RequiresApi(16)
@SourceDebugExtension({"SMAP\nCredentialManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CredentialManager.kt\nandroidx/credentials/CredentialManager\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,450:1\n314#2,11:451\n314#2,11:462\n314#2,11:473\n314#2,11:484\n314#2,11:495\n*S KotlinDebug\n*F\n+ 1 CredentialManager.kt\nandroidx/credentials/CredentialManager\n*L\n115#1:451,11\n163#1:462,11\n205#1:473,11\n246#1:484,11\n290#1:495,11\n*E\n"})
/* loaded from: classes.dex */
public interface CredentialManager {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: CredentialManager.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        @NotNull
        public final CredentialManager create(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new CredentialManagerImpl(context);
        }
    }

    static /* synthetic */ Object clearCredentialState$suspendImpl(CredentialManager credentialManager, ClearCredentialStateRequest clearCredentialStateRequest, rs.c<? super Unit> cVar) {
        final kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        final CancellationSignal cancellationSignal = new CancellationSignal();
        eVar.u(new Function1<Throwable, Unit>() { // from class: androidx.credentials.CredentialManager$clearCredentialState$2$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th2) {
                cancellationSignal.cancel();
            }
        });
        credentialManager.clearCredentialStateAsync(clearCredentialStateRequest, cancellationSignal, new a(), new CredentialManagerCallback<Void, ClearCredentialException>() { // from class: androidx.credentials.CredentialManager$clearCredentialState$2$callback$1
            @Override // androidx.credentials.CredentialManagerCallback
            public void onError(@NotNull ClearCredentialException e10) {
                Intrinsics.checkNotNullParameter(e10, "e");
                gt.i<Unit> iVar = eVar;
                Result.a aVar = Result.f60901b;
                iVar.resumeWith(Result.d(kotlin.f.a(e10)));
            }

            @Override // androidx.credentials.CredentialManagerCallback
            public void onResult(@Nullable Void r22) {
                gt.i<Unit> iVar = eVar;
                Result.a aVar = Result.f60901b;
                iVar.resumeWith(Result.d(Unit.f60915a));
            }
        });
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            return B;
        }
        return Unit.f60915a;
    }

    @NotNull
    static CredentialManager create(@NotNull Context context) {
        return Companion.create(context);
    }

    static /* synthetic */ Object createCredential$suspendImpl(CredentialManager credentialManager, Context context, CreateCredentialRequest createCredentialRequest, rs.c<? super CreateCredentialResponse> cVar) {
        final kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        final CancellationSignal cancellationSignal = new CancellationSignal();
        eVar.u(new Function1<Throwable, Unit>() { // from class: androidx.credentials.CredentialManager$createCredential$2$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th2) {
                cancellationSignal.cancel();
            }
        });
        credentialManager.createCredentialAsync(context, createCredentialRequest, cancellationSignal, new a(), new CredentialManagerCallback<CreateCredentialResponse, CreateCredentialException>() { // from class: androidx.credentials.CredentialManager$createCredential$2$callback$1
            @Override // androidx.credentials.CredentialManagerCallback
            public void onError(@NotNull CreateCredentialException e10) {
                Intrinsics.checkNotNullParameter(e10, "e");
                gt.i<CreateCredentialResponse> iVar = eVar;
                Result.a aVar = Result.f60901b;
                iVar.resumeWith(Result.d(kotlin.f.a(e10)));
            }

            @Override // androidx.credentials.CredentialManagerCallback
            public void onResult(@NotNull CreateCredentialResponse result) {
                Intrinsics.checkNotNullParameter(result, "result");
                eVar.resumeWith(Result.d(result));
            }
        });
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    static /* synthetic */ Object getCredential$suspendImpl(CredentialManager credentialManager, Context context, GetCredentialRequest getCredentialRequest, rs.c<? super GetCredentialResponse> cVar) {
        final kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        final CancellationSignal cancellationSignal = new CancellationSignal();
        eVar.u(new Function1<Throwable, Unit>() { // from class: androidx.credentials.CredentialManager$getCredential$2$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th2) {
                cancellationSignal.cancel();
            }
        });
        credentialManager.getCredentialAsync(context, getCredentialRequest, cancellationSignal, new a(), new CredentialManagerCallback<GetCredentialResponse, GetCredentialException>() { // from class: androidx.credentials.CredentialManager$getCredential$2$callback$1
            @Override // androidx.credentials.CredentialManagerCallback
            public void onError(@NotNull GetCredentialException e10) {
                Intrinsics.checkNotNullParameter(e10, "e");
                gt.i<GetCredentialResponse> iVar = eVar;
                Result.a aVar = Result.f60901b;
                iVar.resumeWith(Result.d(kotlin.f.a(e10)));
            }

            @Override // androidx.credentials.CredentialManagerCallback
            public void onResult(@NotNull GetCredentialResponse result) {
                Intrinsics.checkNotNullParameter(result, "result");
                eVar.resumeWith(Result.d(result));
            }
        });
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    @RequiresApi(34)
    static /* synthetic */ Object prepareGetCredential$suspendImpl(CredentialManager credentialManager, GetCredentialRequest getCredentialRequest, rs.c<? super PrepareGetCredentialResponse> cVar) {
        final kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        final CancellationSignal cancellationSignal = new CancellationSignal();
        eVar.u(new Function1<Throwable, Unit>() { // from class: androidx.credentials.CredentialManager$prepareGetCredential$2$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th2) {
                cancellationSignal.cancel();
            }
        });
        credentialManager.prepareGetCredentialAsync(getCredentialRequest, cancellationSignal, new a(), new CredentialManagerCallback<PrepareGetCredentialResponse, GetCredentialException>() { // from class: androidx.credentials.CredentialManager$prepareGetCredential$2$callback$1
            @Override // androidx.credentials.CredentialManagerCallback
            public void onError(@NotNull GetCredentialException e10) {
                Intrinsics.checkNotNullParameter(e10, "e");
                gt.i<PrepareGetCredentialResponse> iVar = eVar;
                Result.a aVar = Result.f60901b;
                iVar.resumeWith(Result.d(kotlin.f.a(e10)));
            }

            @Override // androidx.credentials.CredentialManagerCallback
            public void onResult(@NotNull PrepareGetCredentialResponse result) {
                Intrinsics.checkNotNullParameter(result, "result");
                eVar.resumeWith(Result.d(result));
            }
        });
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    @Nullable
    default Object clearCredentialState(@NotNull ClearCredentialStateRequest clearCredentialStateRequest, @NotNull rs.c<? super Unit> cVar) {
        return clearCredentialState$suspendImpl(this, clearCredentialStateRequest, cVar);
    }

    void clearCredentialStateAsync(@NotNull ClearCredentialStateRequest clearCredentialStateRequest, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull CredentialManagerCallback<Void, ClearCredentialException> credentialManagerCallback);

    @Nullable
    default Object createCredential(@NotNull Context context, @NotNull CreateCredentialRequest createCredentialRequest, @NotNull rs.c<? super CreateCredentialResponse> cVar) {
        return createCredential$suspendImpl(this, context, createCredentialRequest, cVar);
    }

    void createCredentialAsync(@NotNull Context context, @NotNull CreateCredentialRequest createCredentialRequest, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull CredentialManagerCallback<CreateCredentialResponse, CreateCredentialException> credentialManagerCallback);

    @RequiresApi(34)
    @NotNull
    PendingIntent createSettingsPendingIntent();

    @Nullable
    default Object getCredential(@NotNull Context context, @NotNull GetCredentialRequest getCredentialRequest, @NotNull rs.c<? super GetCredentialResponse> cVar) {
        return getCredential$suspendImpl(this, context, getCredentialRequest, cVar);
    }

    void getCredentialAsync(@NotNull Context context, @NotNull GetCredentialRequest getCredentialRequest, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull CredentialManagerCallback<GetCredentialResponse, GetCredentialException> credentialManagerCallback);

    @RequiresApi(34)
    void getCredentialAsync(@NotNull Context context, @NotNull PrepareGetCredentialResponse.PendingGetCredentialHandle pendingGetCredentialHandle, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull CredentialManagerCallback<GetCredentialResponse, GetCredentialException> credentialManagerCallback);

    @RequiresApi(34)
    @Nullable
    default Object prepareGetCredential(@NotNull GetCredentialRequest getCredentialRequest, @NotNull rs.c<? super PrepareGetCredentialResponse> cVar) {
        return prepareGetCredential$suspendImpl(this, getCredentialRequest, cVar);
    }

    @RequiresApi(34)
    void prepareGetCredentialAsync(@NotNull GetCredentialRequest getCredentialRequest, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull CredentialManagerCallback<PrepareGetCredentialResponse, GetCredentialException> credentialManagerCallback);

    @RequiresApi(34)
    @Nullable
    default Object getCredential(@NotNull Context context, @NotNull PrepareGetCredentialResponse.PendingGetCredentialHandle pendingGetCredentialHandle, @NotNull rs.c<? super GetCredentialResponse> cVar) {
        return getCredential$suspendImpl(this, context, pendingGetCredentialHandle, cVar);
    }

    @RequiresApi(34)
    static /* synthetic */ Object getCredential$suspendImpl(CredentialManager credentialManager, Context context, PrepareGetCredentialResponse.PendingGetCredentialHandle pendingGetCredentialHandle, rs.c<? super GetCredentialResponse> cVar) {
        final kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        final CancellationSignal cancellationSignal = new CancellationSignal();
        eVar.u(new Function1<Throwable, Unit>() { // from class: androidx.credentials.CredentialManager$getCredential$4$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th2) {
                cancellationSignal.cancel();
            }
        });
        credentialManager.getCredentialAsync(context, pendingGetCredentialHandle, cancellationSignal, new a(), new CredentialManagerCallback<GetCredentialResponse, GetCredentialException>() { // from class: androidx.credentials.CredentialManager$getCredential$4$callback$1
            @Override // androidx.credentials.CredentialManagerCallback
            public void onError(@NotNull GetCredentialException e10) {
                Intrinsics.checkNotNullParameter(e10, "e");
                gt.i<GetCredentialResponse> iVar = eVar;
                Result.a aVar = Result.f60901b;
                iVar.resumeWith(Result.d(kotlin.f.a(e10)));
            }

            @Override // androidx.credentials.CredentialManagerCallback
            public void onResult(@NotNull GetCredentialResponse result) {
                Intrinsics.checkNotNullParameter(result, "result");
                eVar.resumeWith(Result.d(result));
            }
        });
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }
}
