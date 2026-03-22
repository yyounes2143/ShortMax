package androidx.compose.ui.text.font;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FontListFontFamilyTypefaceAdapter.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.ui.text.font.AsyncTypefaceCache", f = "FontListFontFamilyTypefaceAdapter.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_BYTEVC1_SW_FORBIDDEN}, m = "runCached")
/* loaded from: classes.dex */
public final class AsyncTypefaceCache$runCached$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AsyncTypefaceCache this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncTypefaceCache$runCached$1(AsyncTypefaceCache asyncTypefaceCache, rs.c<? super AsyncTypefaceCache$runCached$1> cVar) {
        super(cVar);
        this.this$0 = asyncTypefaceCache;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.runCached(null, null, false, null, this);
    }
}
