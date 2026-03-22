package bf;

import android.app.Activity;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.play.core.review.ReviewInfo;
import com.startshorts.androidplayer.log.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ReviewManagerChannel.kt */
@Metadata
/* loaded from: classes6.dex */
public final class n {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final n f2636a = new n();

    private n() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(final String str, com.google.android.play.core.review.a aVar, Activity activity, final Function0 function0, ReviewInfo reviewInfo) {
        Logger.f41511a.h(str, "requestReviewFlow success");
        Task<Void> b10 = aVar.b(activity, reviewInfo);
        final Function1 function1 = new Function1() { // from class: bf.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit k10;
                k10 = n.k(str, (Void) obj);
                return k10;
            }
        };
        b10.addOnSuccessListener(new OnSuccessListener() { // from class: bf.k
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                n.l(Function1.this, obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: bf.l
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                n.m(str, function0, exc);
            }
        }).addOnCompleteListener(new OnCompleteListener() { // from class: bf.m
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                n.n(str, task);
            }
        });
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(String str, Void r22) {
        Logger.f41511a.h(str, "launchReviewFlow success");
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(Function1 function1, Object obj) {
        function1.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(String str, Function0 function0, Exception exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        Logger logger = Logger.f41511a;
        logger.e(str, "launchReviewFlow failed -> " + exception.getMessage());
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(String str, Task it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Logger.f41511a.h(str, "launchReviewFlow complete");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(Function1 function1, Object obj) {
        function1.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(String str, Function0 function0, Exception exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        Logger logger = Logger.f41511a;
        logger.e(str, "requestReviewFlow failed -> " + exception.getMessage());
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(Function0 function0, String str, Task it) {
        Intrinsics.checkNotNullParameter(it, "it");
        function0.invoke();
        Logger.f41511a.h(str, "requestReviewFlow complete");
    }

    public final void i(@NotNull final String tag, @NotNull final Activity activity, @NotNull final Function0<Unit> onFailed, @NotNull final Function0<Unit> onComplete) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(onFailed, "onFailed");
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        Logger.f41511a.h(tag, "ratingInApp firstRating=true");
        final com.google.android.play.core.review.a a10 = com.google.android.play.core.review.b.a(activity);
        Intrinsics.checkNotNullExpressionValue(a10, "create(...)");
        Task<ReviewInfo> a11 = a10.a();
        Intrinsics.checkNotNullExpressionValue(a11, "requestReviewFlow(...)");
        final Function1 function1 = new Function1() { // from class: bf.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit j10;
                j10 = n.j(tag, a10, activity, onFailed, (ReviewInfo) obj);
                return j10;
            }
        };
        a11.addOnSuccessListener(new OnSuccessListener() { // from class: bf.g
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                n.o(Function1.this, obj);
            }
        });
        a11.addOnFailureListener(new OnFailureListener() { // from class: bf.h
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                n.p(tag, onFailed, exc);
            }
        });
        a11.addOnCompleteListener(new OnCompleteListener() { // from class: bf.i
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                n.q(Function0.this, tag, task);
            }
        });
    }
}
