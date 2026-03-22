package com.unity3d.ads.core.domain;

import androidx.annotation.VisibleForTesting;
import com.unity3d.ads.core.data.repository.FocusRepository;
import com.unity3d.ads.core.data.repository.FocusState;
import com.unity3d.ads.core.data.repository.SessionRepository;
import et.b;
import gt.c0;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.h;
import kotlinx.coroutines.flow.c;
import kotlinx.coroutines.flow.o;
import kotlinx.coroutines.i;
import kt.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidHandleFocusCounters.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidHandleFocusCounters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidHandleFocusCounters.kt\ncom/unity3d/ads/core/domain/AndroidHandleFocusCounters\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,67:1\n1#2:68\n214#3,5:69\n*S KotlinDebug\n*F\n+ 1 AndroidHandleFocusCounters.kt\ncom/unity3d/ads/core/domain/AndroidHandleFocusCounters\n*L\n46#1:69,5\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidHandleFocusCounters {
    @NotNull
    private final c0 defaultDispatcher;
    @NotNull
    private final FocusRepository focusRepository;
    @NotNull
    private final ConcurrentHashMap<String, kotlin.time.a> focusTimesPerActivity;
    @NotNull
    private final AndroidGetIsAdActivity isAdActivity;
    @Nullable
    private volatile String latestKnownActivityResumed;
    @NotNull
    private final e<FocusState> previousFocusState;
    @NotNull
    private final SessionRepository sessionRepository;
    @NotNull
    private final b timeSource;

    public AndroidHandleFocusCounters(@NotNull SessionRepository sessionRepository, @NotNull FocusRepository focusRepository, @NotNull AndroidGetIsAdActivity isAdActivity, @NotNull c0 defaultDispatcher, @NotNull b timeSource) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(focusRepository, "focusRepository");
        Intrinsics.checkNotNullParameter(isAdActivity, "isAdActivity");
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(timeSource, "timeSource");
        this.sessionRepository = sessionRepository;
        this.focusRepository = focusRepository;
        this.isAdActivity = isAdActivity;
        this.defaultDispatcher = defaultDispatcher;
        this.timeSource = timeSource;
        this.focusTimesPerActivity = new ConcurrentHashMap<>();
        this.previousFocusState = o.a(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onFocusStateChange(FocusState focusState) {
        FocusState value;
        FocusState focusState2;
        e<FocusState> eVar = this.previousFocusState;
        do {
            value = eVar.getValue();
            focusState2 = value;
        } while (!eVar.b(value, focusState));
        if (focusState2 != null && focusState.getClass() != focusState2.getClass()) {
            this.sessionRepository.incrementFocusChangeCount();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPause(String str) {
        String str2 = this.latestKnownActivityResumed;
        if (str2 == null || Intrinsics.areEqual(str2, str)) {
            kotlin.time.a remove = this.focusTimesPerActivity.remove(str);
            if (remove == null) {
                remove = this.timeSource.a();
            }
            Intrinsics.checkNotNullExpressionValue(remove, "focusTimesPerActivity.re…) ?: timeSource.markNow()");
            this.sessionRepository.addTimeToGlobalAdsFocusTime((int) kotlin.time.b.q(remove.a()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onResume(String str) {
        this.latestKnownActivityResumed = str;
        this.focusTimesPerActivity.put(str, this.timeSource.a());
    }

    @Nullable
    public final String getLatestKnownActivityResumed() {
        return this.latestKnownActivityResumed;
    }

    public final void invoke() {
        c.J(c.O(this.focusRepository.getFocusState(), new AndroidHandleFocusCounters$invoke$1(this, null)), i.a(this.defaultDispatcher));
    }

    public final void setLatestKnownActivityResumed(@Nullable String str) {
        this.latestKnownActivityResumed = str;
    }

    public /* synthetic */ AndroidHandleFocusCounters(SessionRepository sessionRepository, FocusRepository focusRepository, AndroidGetIsAdActivity androidGetIsAdActivity, c0 c0Var, b bVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(sessionRepository, focusRepository, androidGetIsAdActivity, c0Var, (i10 & 16) != 0 ? h.f61257a : bVar);
    }

    @VisibleForTesting
    public static /* synthetic */ void getLatestKnownActivityResumed$annotations() {
    }
}
