package dd;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata
/* loaded from: classes6.dex */
public final class e implements ParameterizedType {

    /* renamed from: a  reason: collision with root package name */
    public final Class f50340a;

    public e(Class<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        this.f50340a = clazz;
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type[] getActualTypeArguments() {
        return new Type[]{this.f50340a};
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type getOwnerType() {
        return null;
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type getRawType() {
        return List.class;
    }
}
