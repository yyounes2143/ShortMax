package com.unity3d.ads.core.domain;

import android.app.Activity;
import com.unity3d.ads.core.data.repository.FocusState;
import com.unity3d.ads.core.data.repository.SessionRepository;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidHandleFocusCounters.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidHandleFocusCounters$invoke$1", f = "AndroidHandleFocusCounters.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nAndroidHandleFocusCounters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidHandleFocusCounters.kt\ncom/unity3d/ads/core/domain/AndroidHandleFocusCounters$invoke$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidHandleFocusCounters$invoke$1 extends SuspendLambda implements Function2<FocusState, c<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AndroidHandleFocusCounters this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidHandleFocusCounters$invoke$1(AndroidHandleFocusCounters androidHandleFocusCounters, c<? super AndroidHandleFocusCounters$invoke$1> cVar) {
        super(2, cVar);
        this.this$0 = androidHandleFocusCounters;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        AndroidHandleFocusCounters$invoke$1 androidHandleFocusCounters$invoke$1 = new AndroidHandleFocusCounters$invoke$1(this.this$0, cVar);
        androidHandleFocusCounters$invoke$1.L$0 = obj;
        return androidHandleFocusCounters$invoke$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull FocusState focusState, @Nullable c<? super Unit> cVar) {
        return ((AndroidHandleFocusCounters$invoke$1) create(focusState, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        AndroidGetIsAdActivity androidGetIsAdActivity;
        SessionRepository sessionRepository;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            FocusState focusState = (FocusState) this.L$0;
            this.this$0.onFocusStateChange(focusState);
            Activity activity = focusState.getActivity().get();
            String str = (activity == null || (str = Reflection.getOrCreateKotlinClass(activity.getClass()).getQualifiedName()) == null) ? "unknown_activity_name" : "unknown_activity_name";
            androidGetIsAdActivity = this.this$0.isAdActivity;
            if (androidGetIsAdActivity.invoke(str)) {
                sessionRepository = this.this$0.sessionRepository;
                sessionRepository.incrementGlobalAdsFocusChangeCount();
                if (focusState instanceof FocusState.Focused) {
                    this.this$0.onResume(str);
                } else if (focusState instanceof FocusState.Unfocused) {
                    this.this$0.onPause(str);
                }
                return Unit.f60915a;
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
