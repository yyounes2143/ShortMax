package y3;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* compiled from: BaseCloseableImage.java */
/* loaded from: classes3.dex */
public abstract class a implements e {

    /* renamed from: c  reason: collision with root package name */
    private static final Set<String> f70605c = new HashSet(Arrays.asList("encoded_size", "encoded_width", "encoded_height", "uri_source", "image_format", "bitmap_config", "is_rounded", "non_fatal_decode_error", "original_url", "modified_url", "image_color_space"));

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Object> f70606a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private m f70607b;

    @Override // y3.e
    public boolean J0() {
        return false;
    }

    @Override // y3.e
    public m M() {
        if (this.f70607b == null) {
            this.f70607b = new n(getWidth(), getHeight(), getSizeInBytes(), x0(), getExtras());
        }
        return this.f70607b;
    }

    @Override // com.facebook.fresco.middleware.HasExtraData
    public <T> T getExtra(String str) {
        return (T) getExtra(str, null);
    }

    @Override // y3.l, com.facebook.fresco.middleware.HasExtraData
    public Map<String, Object> getExtras() {
        return this.f70606a;
    }

    @Override // com.facebook.fresco.middleware.HasExtraData
    public <E> void putExtra(String str, E e10) {
        if (f70605c.contains(str)) {
            this.f70606a.put(str, e10);
        }
    }

    @Override // com.facebook.fresco.middleware.HasExtraData
    public void putExtras(Map<String, ? extends Object> map) {
        if (map == null) {
            return;
        }
        for (String str : f70605c) {
            Object obj = map.get(str);
            if (obj != null) {
                this.f70606a.put(str, obj);
            }
        }
    }

    @Override // y3.e
    public p x0() {
        return o.f70637d;
    }

    @Override // com.facebook.fresco.middleware.HasExtraData
    public <T> T getExtra(String str, T t10) {
        T t11 = (T) this.f70606a.get(str);
        return t11 == null ? t10 : t11;
    }
}
