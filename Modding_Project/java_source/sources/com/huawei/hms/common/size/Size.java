package com.huawei.hms.common.size;

import androidx.webkit.ProxyConfig;
import com.huawei.hms.common.internal.Objects;
import com.ss.texturerender.TextureRenderKeys;
/* loaded from: classes5.dex */
public class Size {

    /* renamed from: a  reason: collision with root package name */
    private final int f22099a;

    /* renamed from: b  reason: collision with root package name */
    private final int f22100b;

    public Size(int i10, int i11) {
        this.f22099a = i10;
        this.f22100b = i11;
    }

    public static Size parseSize(String str) {
        try {
            int indexOf = str.indexOf(TextureRenderKeys.KEY_IS_X);
            if (indexOf < 0) {
                indexOf = str.indexOf(ProxyConfig.MATCH_ALL_SCHEMES);
            }
            return new Size(Integer.parseInt(str.substring(0, indexOf)), Integer.parseInt(str.substring(indexOf + 1)));
        } catch (Exception unused) {
            throw new IllegalArgumentException("Size parses failed");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Size)) {
            return false;
        }
        Size size = (Size) obj;
        if (this.f22099a != size.f22099a || this.f22100b != size.f22100b) {
            return false;
        }
        return true;
    }

    public final int getHeight() {
        return this.f22100b;
    }

    public final int getWidth() {
        return this.f22099a;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(getWidth()), Integer.valueOf(getHeight()));
    }

    public final String toString() {
        int i10 = this.f22099a;
        int i11 = this.f22100b;
        return "Width is " + i10 + " Height is " + i11;
    }
}
