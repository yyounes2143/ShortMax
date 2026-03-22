package androidx.compose.ui.text.font;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FontListFontFamilyTypefaceAdapter.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.ui.text.font.AsyncFontListLoader$load$2$typeface$1", f = "FontListFontFamilyTypefaceAdapter.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_REQ_FINSIH_TIME}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class AsyncFontListLoader$load$2$typeface$1 extends SuspendLambda implements Function1<rs.c<? super Object>, Object> {
    final /* synthetic */ Font $font;
    int label;
    final /* synthetic */ AsyncFontListLoader this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncFontListLoader$load$2$typeface$1(AsyncFontListLoader asyncFontListLoader, Font font, rs.c<? super AsyncFontListLoader$load$2$typeface$1> cVar) {
        super(1, cVar);
        this.this$0 = asyncFontListLoader;
        this.$font = font;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@NotNull rs.c<?> cVar) {
        return new AsyncFontListLoader$load$2$typeface$1(this.this$0, this.$font, cVar);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(rs.c<? super Object> cVar) {
        return invoke2((rs.c<Object>) cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            AsyncFontListLoader asyncFontListLoader = this.this$0;
            Font font = this.$font;
            this.label = 1;
            obj = asyncFontListLoader.loadWithTimeoutOrNull$ui_text_release(font, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(@Nullable rs.c<Object> cVar) {
        return ((AsyncFontListLoader$load$2$typeface$1) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
