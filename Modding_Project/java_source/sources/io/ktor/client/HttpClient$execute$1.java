package io.ktor.client;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpClient.kt */
@Metadata
@d(c = "io.ktor.client.HttpClient", f = "HttpClient.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_SLOW_PLAY_SPEED}, m = "execute$ktor_client_core")
/* loaded from: classes8.dex */
public final class HttpClient$execute$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f58770h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ HttpClient f58771i;

    /* renamed from: j  reason: collision with root package name */
    int f58772j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpClient$execute$1(HttpClient httpClient, c<? super HttpClient$execute$1> cVar) {
        super(cVar);
        this.f58771i = httpClient;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f58770h = obj;
        this.f58772j |= Integer.MIN_VALUE;
        return this.f58771i.a(null, this);
    }
}
