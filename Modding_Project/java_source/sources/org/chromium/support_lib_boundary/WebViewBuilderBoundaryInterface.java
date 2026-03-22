package org.chromium.support_lib_boundary;

import android.content.Context;
import android.webkit.WebView;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
/* loaded from: classes8.dex */
public interface WebViewBuilderBoundaryInterface {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes8.dex */
    public @interface Baseline {
        public static final int DEFAULT = 0;
    }

    /* loaded from: classes8.dex */
    public static class Config implements Consumer<BiConsumer<Integer, Object>> {
        public String profileName;
        public boolean restrictJavascriptInterface;
        public int baseline = 0;

        /* renamed from: a  reason: collision with root package name */
        List<Object> f64368a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        Map<String, Boolean> f64369b = new LinkedHashMap();

        /* renamed from: c  reason: collision with root package name */
        List<List<String>> f64370c = new ArrayList();

        public void addJavascriptInterface(Object obj, String str, List<String> list) {
            if (!this.f64369b.containsKey(str)) {
                this.f64368a.add(obj);
                this.f64369b.put(str, Boolean.TRUE);
                this.f64370c.add(list);
                return;
            }
            throw new IllegalArgumentException("A duplicate JavaScript interface was provided for \"" + str + "\"");
        }

        @Override // java.util.function.Consumer
        public void accept(BiConsumer<Integer, Object> biConsumer) {
            biConsumer.accept(0, Integer.valueOf(this.baseline));
            biConsumer.accept(2, Boolean.valueOf(this.restrictJavascriptInterface));
            biConsumer.accept(1, new Object[]{this.f64368a, new ArrayList(this.f64369b.keySet()), this.f64370c});
            if (this.profileName != null) {
                biConsumer.accept(3, this.profileName);
            }
        }
    }

    @Target({ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes8.dex */
    public @interface ConfigField {
        public static final int BASELINE = 0;
        public static final int JAVASCRIPT_INTERFACE = 1;
        public static final int PROFILE_NAME = 3;
        public static final int RESTRICT_JAVASCRIPT_INTERFACE = 2;
    }

    WebView build(Context context, Consumer<BiConsumer<Integer, Object>> consumer);
}
