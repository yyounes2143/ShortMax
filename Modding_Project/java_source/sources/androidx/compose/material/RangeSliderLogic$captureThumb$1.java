package androidx.compose.material;

import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Slider.kt */
@Metadata
@d(c = "androidx.compose.material.RangeSliderLogic$captureThumb$1", f = "Slider.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_MAX_CODEC_NUMS_IN_POOL}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class RangeSliderLogic$captureThumb$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ boolean $draggingStart;
    final /* synthetic */ Interaction $interaction;
    int label;
    final /* synthetic */ RangeSliderLogic this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RangeSliderLogic$captureThumb$1(RangeSliderLogic rangeSliderLogic, boolean z10, Interaction interaction, c<? super RangeSliderLogic$captureThumb$1> cVar) {
        super(2, cVar);
        this.this$0 = rangeSliderLogic;
        this.$draggingStart = z10;
        this.$interaction = interaction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new RangeSliderLogic$captureThumb$1(this.this$0, this.$draggingStart, this.$interaction, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((RangeSliderLogic$captureThumb$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            MutableInteractionSource activeInteraction = this.this$0.activeInteraction(this.$draggingStart);
            Interaction interaction = this.$interaction;
            this.label = 1;
            if (activeInteraction.emit(interaction, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
