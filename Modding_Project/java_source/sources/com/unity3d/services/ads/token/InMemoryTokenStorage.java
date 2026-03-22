package com.unity3d.services.ads.token;

import com.unity3d.services.core.configuration.ConfigurationReader;
import com.unity3d.services.core.configuration.InitializeEventsMetricSender;
import com.unity3d.services.core.configuration.PrivacyConfigStorage;
import com.unity3d.services.core.device.reader.GameSessionIdReader;
import com.unity3d.services.core.device.reader.builder.DeviceInfoReaderBuilder;
import com.unity3d.services.core.di.IServiceComponent;
import com.unity3d.services.core.di.IServiceProvider;
import com.unity3d.services.core.webview.WebViewApp;
import com.unity3d.services.core.webview.WebViewEventCategory;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.o;
import kt.e;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
/* compiled from: InMemoryTokenStorage.kt */
@Metadata
@SourceDebugExtension({"SMAP\nInMemoryTokenStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InMemoryTokenStorage.kt\ncom/unity3d/services/ads/token/InMemoryTokenStorage\n+ 2 IServiceComponent.kt\ncom/unity3d/services/core/di/IServiceComponentKt\n+ 3 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,101:1\n29#2,5:102\n230#3,5:107\n214#3,5:112\n230#3,5:117\n*S KotlinDebug\n*F\n+ 1 InMemoryTokenStorage.kt\ncom/unity3d/services/ads/token/InMemoryTokenStorage\n*L\n27#1:102,5\n53#1:107,5\n67#1:112,5\n91#1:117,5\n*E\n"})
/* loaded from: classes7.dex */
public final class InMemoryTokenStorage implements TokenStorage, IServiceComponent {
    @NotNull
    private final ConcurrentLinkedQueue<String> queue = new ConcurrentLinkedQueue<>();
    @NotNull
    private final e<Integer> accessCounter = o.a(-1);
    @NotNull
    private final e<String> initToken = o.a(null);
    private final ExecutorService executorService = Executors.newSingleThreadExecutor();
    @NotNull
    private final i asyncTokenStorage$delegate = c.a(LazyThreadSafetyMode.NONE, new Function0<AsyncTokenStorage>() { // from class: com.unity3d.services.ads.token.InMemoryTokenStorage$special$$inlined$inject$default$1
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.unity3d.services.ads.token.AsyncTokenStorage] */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final AsyncTokenStorage invoke() {
            IServiceComponent iServiceComponent = IServiceComponent.this;
            return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(AsyncTokenStorage.class));
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _get_nativeGeneratedToken_$lambda$2(String str) {
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.TOKEN, TokenEvent.TOKEN_NATIVE_DATA, str);
    }

    private final AsyncTokenStorage getAsyncTokenStorage() {
        return (AsyncTokenStorage) this.asyncTokenStorage$delegate.getValue();
    }

    private final void triggerTokenAvailable(boolean z10) {
        InitializeEventsMetricSender.getInstance().sdkTokenDidBecomeAvailableWithConfig(z10);
    }

    @Override // com.unity3d.services.ads.token.TokenStorage
    public void appendTokens(@NotNull JSONArray tokens) throws JSONException {
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        this.accessCounter.b(-1, 0);
        int length = tokens.length();
        for (int i10 = 0; i10 < length; i10++) {
            this.queue.add(tokens.getString(i10));
        }
        if (length > 0) {
            triggerTokenAvailable(false);
            getAsyncTokenStorage().onTokenAvailable();
        }
    }

    @Override // com.unity3d.services.ads.token.TokenStorage
    public void createTokens(@NotNull JSONArray tokens) throws JSONException {
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        deleteTokens();
        appendTokens(tokens);
    }

    @Override // com.unity3d.services.ads.token.TokenStorage
    public void deleteTokens() {
        Integer value;
        this.queue.clear();
        e<Integer> eVar = this.accessCounter;
        do {
            value = eVar.getValue();
            value.intValue();
        } while (!eVar.b(value, -1));
    }

    @Override // com.unity3d.services.ads.token.TokenStorage
    @NotNull
    public Unit getNativeGeneratedToken() {
        new NativeTokenGenerator(this.executorService, new DeviceInfoReaderBuilder(new ConfigurationReader(), PrivacyConfigStorage.getInstance(), GameSessionIdReader.getInstance()), null).generateToken(new INativeTokenGeneratorListener() { // from class: com.unity3d.services.ads.token.a
            @Override // com.unity3d.services.ads.token.INativeTokenGeneratorListener
            public final void onReady(String str) {
                InMemoryTokenStorage._get_nativeGeneratedToken_$lambda$2(str);
            }
        });
        return Unit.f60915a;
    }

    @Override // com.unity3d.services.core.di.IServiceComponent
    @NotNull
    public IServiceProvider getServiceProvider() {
        return IServiceComponent.DefaultImpls.getServiceProvider(this);
    }

    @Override // com.unity3d.services.ads.token.TokenStorage
    @Nullable
    public String getToken() {
        Integer value;
        Integer num;
        if (this.accessCounter.getValue().intValue() == -1) {
            return this.initToken.getValue();
        }
        if (this.queue.isEmpty()) {
            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.TOKEN, TokenEvent.QUEUE_EMPTY, new Object[0]);
            return null;
        }
        e<Integer> eVar = this.accessCounter;
        do {
            value = eVar.getValue();
            num = value;
        } while (!eVar.b(value, Integer.valueOf(num.intValue() + 1)));
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.TOKEN, TokenEvent.TOKEN_ACCESS, Integer.valueOf(num.intValue()));
        return this.queue.poll();
    }

    @Override // com.unity3d.services.ads.token.TokenStorage
    public void setInitToken(@Nullable String str) {
        if (str == null) {
            return;
        }
        e<String> eVar = this.initToken;
        do {
        } while (!eVar.b(eVar.getValue(), str));
        triggerTokenAvailable(true);
        getAsyncTokenStorage().onTokenAvailable();
    }
}
