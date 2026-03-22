package androidx.room;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
/* compiled from: Fts3.kt */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.CLASS)
@Metadata
/* loaded from: classes2.dex */
public @interface Fts3 {
    String tokenizer() default "simple";

    String[] tokenizerArgs() default {};
}
